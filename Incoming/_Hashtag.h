// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Hashtag.h instead.

#import <CoreData/CoreData.h>

extern const struct HashtagAttributes {
	__unsafe_unretained NSString *count;
	__unsafe_unretained NSString *name;
} HashtagAttributes;

extern const struct HashtagRelationships {
	__unsafe_unretained NSString *search;
} HashtagRelationships;

@class Search;

@interface HashtagID : NSManagedObjectID {}
@end

@interface _Hashtag : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) HashtagID* objectID;

@property (nonatomic, strong) NSNumber* count;

@property (atomic) int64_t countValue;
- (int64_t)countValue;
- (void)setCountValue:(int64_t)value_;

//- (BOOL)validateCount:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Search *search;

//- (BOOL)validateSearch:(id*)value_ error:(NSError**)error_;

@end

@interface _Hashtag (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveCount;
- (void)setPrimitiveCount:(NSNumber*)value;

- (int64_t)primitiveCountValue;
- (void)setPrimitiveCountValue:(int64_t)value_;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (Search*)primitiveSearch;
- (void)setPrimitiveSearch:(Search*)value;

@end
