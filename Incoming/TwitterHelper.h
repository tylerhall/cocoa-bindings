//
//  TwitterHelper.h
//  Incoming
//
//  Created by Hall Tyler on 1/25/16.
//  Copyright © 2016 Click On Tyler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <STTwitter/STTwitter.h>
#import <MagicalRecord/MagicalRecord.h>

@interface TwitterHelper : NSObject

+ (instancetype)sharedInstance;
- (void)stopSearchWithGUID:(NSString *)guid;
- (void)startAllSearches;
- (void)startSearchWithGUID:(NSString *)guid;
- (void)fetchOldTweetsForSearchWithGUID:(NSString *)guid;

@end
