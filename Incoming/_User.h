// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to User.h instead.

#import <CoreData/CoreData.h>

extern const struct UserAttributes {
	__unsafe_unretained NSString *followers;
	__unsafe_unretained NSString *following;
	__unsafe_unretained NSString *guid;
	__unsafe_unretained NSString *listed;
	__unsafe_unretained NSString *updates;
	__unsafe_unretained NSString *username;
} UserAttributes;

extern const struct UserRelationships {
	__unsafe_unretained NSString *tweets;
} UserRelationships;

@class Tweet;

@interface UserID : NSManagedObjectID {}
@end

@interface _User : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) UserID* objectID;

@property (nonatomic, strong) NSNumber* followers;

@property (atomic) int64_t followersValue;
- (int64_t)followersValue;
- (void)setFollowersValue:(int64_t)value_;

//- (BOOL)validateFollowers:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* following;

@property (atomic) int64_t followingValue;
- (int64_t)followingValue;
- (void)setFollowingValue:(int64_t)value_;

//- (BOOL)validateFollowing:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* guid;

@property (atomic) int64_t guidValue;
- (int64_t)guidValue;
- (void)setGuidValue:(int64_t)value_;

//- (BOOL)validateGuid:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* listed;

@property (atomic) int64_t listedValue;
- (int64_t)listedValue;
- (void)setListedValue:(int64_t)value_;

//- (BOOL)validateListed:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* updates;

@property (atomic) int64_t updatesValue;
- (int64_t)updatesValue;
- (void)setUpdatesValue:(int64_t)value_;

//- (BOOL)validateUpdates:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* username;

//- (BOOL)validateUsername:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *tweets;

- (NSMutableSet*)tweetsSet;

@end

@interface _User (TweetsCoreDataGeneratedAccessors)
- (void)addTweets:(NSSet*)value_;
- (void)removeTweets:(NSSet*)value_;
- (void)addTweetsObject:(Tweet*)value_;
- (void)removeTweetsObject:(Tweet*)value_;

@end

@interface _User (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveFollowers;
- (void)setPrimitiveFollowers:(NSNumber*)value;

- (int64_t)primitiveFollowersValue;
- (void)setPrimitiveFollowersValue:(int64_t)value_;

- (NSNumber*)primitiveFollowing;
- (void)setPrimitiveFollowing:(NSNumber*)value;

- (int64_t)primitiveFollowingValue;
- (void)setPrimitiveFollowingValue:(int64_t)value_;

- (NSNumber*)primitiveGuid;
- (void)setPrimitiveGuid:(NSNumber*)value;

- (int64_t)primitiveGuidValue;
- (void)setPrimitiveGuidValue:(int64_t)value_;

- (NSNumber*)primitiveListed;
- (void)setPrimitiveListed:(NSNumber*)value;

- (int64_t)primitiveListedValue;
- (void)setPrimitiveListedValue:(int64_t)value_;

- (NSNumber*)primitiveUpdates;
- (void)setPrimitiveUpdates:(NSNumber*)value;

- (int64_t)primitiveUpdatesValue;
- (void)setPrimitiveUpdatesValue:(int64_t)value_;

- (NSString*)primitiveUsername;
- (void)setPrimitiveUsername:(NSString*)value;

- (NSMutableSet*)primitiveTweets;
- (void)setPrimitiveTweets:(NSMutableSet*)value;

@end
