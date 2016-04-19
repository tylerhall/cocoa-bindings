// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Link.h instead.

#import <CoreData/CoreData.h>

extern const struct LinkAttributes {
	__unsafe_unretained NSString *count;
	__unsafe_unretained NSString *url;
} LinkAttributes;

extern const struct LinkRelationships {
	__unsafe_unretained NSString *search;
} LinkRelationships;

@class Search;

@interface LinkID : NSManagedObjectID {}
@end

@interface _Link : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) LinkID* objectID;

@property (nonatomic, strong) NSNumber* count;

@property (atomic) int64_t countValue;
- (int64_t)countValue;
- (void)setCountValue:(int64_t)value_;

//- (BOOL)validateCount:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* url;

//- (BOOL)validateUrl:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Search *search;

//- (BOOL)validateSearch:(id*)value_ error:(NSError**)error_;

@end

@interface _Link (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveCount;
- (void)setPrimitiveCount:(NSNumber*)value;

- (int64_t)primitiveCountValue;
- (void)setPrimitiveCountValue:(int64_t)value_;

- (NSString*)primitiveUrl;
- (void)setPrimitiveUrl:(NSString*)value;

- (Search*)primitiveSearch;
- (void)setPrimitiveSearch:(Search*)value;

@end
