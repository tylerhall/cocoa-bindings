// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Tweet.h instead.

#import <CoreData/CoreData.h>

extern const struct TweetAttributes {
	__unsafe_unretained NSString *dateTime;
	__unsafe_unretained NSString *guid;
	__unsafe_unretained NSString *text;
} TweetAttributes;

extern const struct TweetRelationships {
	__unsafe_unretained NSString *search;
	__unsafe_unretained NSString *user;
} TweetRelationships;

@class Search;
@class User;

@interface TweetID : NSManagedObjectID {}
@end

@interface _Tweet : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) TweetID* objectID;

@property (nonatomic, strong) NSDate* dateTime;

//- (BOOL)validateDateTime:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* guid;

@property (atomic) int64_t guidValue;
- (int64_t)guidValue;
- (void)setGuidValue:(int64_t)value_;

//- (BOOL)validateGuid:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* text;

//- (BOOL)validateText:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Search *search;

//- (BOOL)validateSearch:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) User *user;

//- (BOOL)validateUser:(id*)value_ error:(NSError**)error_;

@end

@interface _Tweet (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveDateTime;
- (void)setPrimitiveDateTime:(NSDate*)value;

- (NSNumber*)primitiveGuid;
- (void)setPrimitiveGuid:(NSNumber*)value;

- (int64_t)primitiveGuidValue;
- (void)setPrimitiveGuidValue:(int64_t)value_;

- (NSString*)primitiveText;
- (void)setPrimitiveText:(NSString*)value;

- (Search*)primitiveSearch;
- (void)setPrimitiveSearch:(Search*)value;

- (User*)primitiveUser;
- (void)setPrimitiveUser:(User*)value;

@end
