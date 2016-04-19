// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Search.h instead.

#import <CoreData/CoreData.h>

extern const struct SearchAttributes {
	__unsafe_unretained NSString *guid;
	__unsafe_unretained NSString *query;
} SearchAttributes;

extern const struct SearchRelationships {
	__unsafe_unretained NSString *hashtags;
	__unsafe_unretained NSString *links;
	__unsafe_unretained NSString *tweets;
} SearchRelationships;

@class Hashtag;
@class Link;
@class Tweet;

@interface SearchID : NSManagedObjectID {}
@end

@interface _Search : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) SearchID* objectID;

@property (nonatomic, strong) NSString* guid;

//- (BOOL)validateGuid:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* query;

//- (BOOL)validateQuery:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *hashtags;

- (NSMutableSet*)hashtagsSet;

@property (nonatomic, strong) NSSet *links;

- (NSMutableSet*)linksSet;

@property (nonatomic, strong) NSSet *tweets;

- (NSMutableSet*)tweetsSet;

@end

@interface _Search (HashtagsCoreDataGeneratedAccessors)
- (void)addHashtags:(NSSet*)value_;
- (void)removeHashtags:(NSSet*)value_;
- (void)addHashtagsObject:(Hashtag*)value_;
- (void)removeHashtagsObject:(Hashtag*)value_;

@end

@interface _Search (LinksCoreDataGeneratedAccessors)
- (void)addLinks:(NSSet*)value_;
- (void)removeLinks:(NSSet*)value_;
- (void)addLinksObject:(Link*)value_;
- (void)removeLinksObject:(Link*)value_;

@end

@interface _Search (TweetsCoreDataGeneratedAccessors)
- (void)addTweets:(NSSet*)value_;
- (void)removeTweets:(NSSet*)value_;
- (void)addTweetsObject:(Tweet*)value_;
- (void)removeTweetsObject:(Tweet*)value_;

@end

@interface _Search (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveGuid;
- (void)setPrimitiveGuid:(NSString*)value;

- (NSString*)primitiveQuery;
- (void)setPrimitiveQuery:(NSString*)value;

- (NSMutableSet*)primitiveHashtags;
- (void)setPrimitiveHashtags:(NSMutableSet*)value;

- (NSMutableSet*)primitiveLinks;
- (void)setPrimitiveLinks:(NSMutableSet*)value;

- (NSMutableSet*)primitiveTweets;
- (void)setPrimitiveTweets:(NSMutableSet*)value;

@end
