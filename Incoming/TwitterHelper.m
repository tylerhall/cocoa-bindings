//
//  TwitterHelper.m
//  Incoming
//
//  Created by Hall Tyler on 1/25/16.
//  Copyright © 2016 Click On Tyler. All rights reserved.
//

#import "TwitterHelper.h"
#import "Search.h"
#import "Tweet.h"
#import "User.h"
#import "Link.h"
#import "Hashtag.h"

@interface TwitterHelper ()

@property (nonatomic, strong) NSMutableDictionary *searches;
@property (nonatomic, strong) NSDateFormatter *df;
@property (nonatomic, strong) id request;
@property (nonatomic, strong) NSMutableArray *queries;

@end

@implementation TwitterHelper

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });

    return sharedInstance;
}

- (id)init
{
    self = [super init];
    if(self) {
        _df = [NSDateFormatter st_TwitterDateFormatter];
        _searches = @{}.mutableCopy;
        _queries = @[].mutableCopy;
    }
    return self;
}

- (STTwitterAPI *)apiClient
{
    return [STTwitterAPI twitterAPIWithOAuthConsumerKey:@"consumer key"
                                         consumerSecret:@"consumer secrety"
                                             oauthToken:@"oauth token"
                                       oauthTokenSecret:@"oauth token secret"];
}

- (void)startAllSearches
{
    NSArray *searches = [Search MR_findAll];
    for(Search *search in searches) {
        [self startSearchWithGUID:search.guid];
    }
}

- (void)stopSearchWithGUID:(NSString *)guid
{
    Search *theSearch = [Search MR_findFirstByAttribute:SearchAttributes.guid withValue:guid];
    [self.queries removeObject:theSearch.query];
    [self startSearching];
}

- (void)startSearching
{
    [self.request cancel];

    NSString *combinedQueries = [self.queries componentsJoinedByString:@","];

    if(combinedQueries.length == 0) {
        return;
    }

    self.request = [[self apiClient] postStatusesFilterKeyword:combinedQueries tweetBlock:^(NSDictionary *tweet) {
        for(NSString *q in self.queries) {
            if([tweet[@"text"] containsString:q]) {
                Search *theSearch = [Search MR_findFirstByAttribute:SearchAttributes.query withValue:q];
                [self importTweet:tweet intoSearchWithGUID:theSearch.guid];
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@", error);
    }];
}

- (void)startSearchWithGUID:(NSString *)guid
{
    // Fetch our search
    Search *theSearch = [Search MR_findFirstByAttribute:SearchAttributes.guid withValue:guid];

    if(theSearch) {
        [self.queries addObject:theSearch.query];
    }

    [self startSearching];
}

- (void)fetchOldTweetsForSearchWithGUID:(NSString *)guid
{
    Search *theSearch = [Search MR_findFirstByAttribute:SearchAttributes.guid withValue:guid];

    NSObject <STTwitterRequestProtocol> *request = [[self apiClient] getSearchTweetsWithQuery:theSearch.query successBlock:^(NSDictionary *searchMetadata, NSArray *statuses) {
        for(NSDictionary *tweet in statuses) {
            [self importTweet:tweet intoSearchWithGUID:theSearch.guid];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@", error);
    }];
}

- (void)importTweet:(NSDictionary *)tweet intoSearchWithGUID:(NSString *)guid
{
    __weak __typeof__(self) weakSelf = self;

    // Save the new data...
    [MagicalRecord saveWithBlock:^(NSManagedObjectContext * _Nonnull localContext) {
        // Save the tweet....
        Tweet *newTweet = [Tweet MR_createEntityInContext:localContext];
        newTweet.text = tweet[@"text"];
        newTweet.dateTime = [weakSelf.df dateFromString:tweet[@"created_at"]];
        newTweet.guid = tweet[@"id"];

        // Save the search...
        Search *localSearch = [Search MR_findFirstByAttribute:@"guid" withValue:guid inContext:localContext];
        [localSearch addTweetsObject:newTweet];
        newTweet.search = localSearch;

        // Save the user...
        User *theUser = [User MR_findFirstByAttribute:@"guid" withValue:tweet[@"user"][@"id"] inContext:localContext];
        if(!theUser) {
            theUser = [User MR_createEntityInContext:localContext];
        }
        theUser.followers = tweet[@"user"][@"followers_count"];
        theUser.following = tweet[@"user"][@"friends_count"];
        theUser.listed = tweet[@"user"][@"listed_count"];
        theUser.username = tweet[@"user"][@"screen_name"];
        theUser.updates = tweet[@"user"][@"statuses_count"];
        [theUser addTweetsObject:newTweet];
        newTweet.user = theUser;

        // Save the links...
        for(NSDictionary *linkDict in tweet[@"entities"][@"urls"]) {
            Link *theLink = [Link MR_findFirstByAttribute:@"url" withValue:linkDict[@"expanded_url"] inContext:localContext];
            if(theLink) {
                theLink.countValue += 1;
            } else {
                theLink = [Link MR_createEntityInContext:localContext];
                theLink.countValue = 1;
                theLink.url = linkDict[@"expanded_url"];
            }
            theLink.search = localSearch;
            [localSearch addLinksObject:theLink];
        }

        // Save the hashtags...
        for(NSDictionary *tagDict in tweet[@"entities"][@"hashtags"]) {
            NSString *tagName = [NSString stringWithFormat:@"#%@", tagDict[@"text"]];
            Hashtag *tag = [Hashtag MR_findFirstByAttribute:@"name" withValue:tagName inContext:localContext];
            if(tag) {
                tag.countValue += 1;
            } else {
                tag = [Hashtag MR_createEntityInContext:localContext];
                tag.countValue = 1;
                tag.name = tagName;
            }
            tag.search = localSearch;
            [localSearch addHashtagsObject:tag];
        }

    } completion:^(BOOL contextDidSave, NSError * _Nullable error) {

    }];
}

@end
