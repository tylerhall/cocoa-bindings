// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Hashtag.m instead.

#import "_Hashtag.h"

const struct HashtagAttributes HashtagAttributes = {
	.count = @"count",
	.name = @"name",
};

const struct HashtagRelationships HashtagRelationships = {
	.search = @"search",
};

@implementation HashtagID
@end

@implementation _Hashtag

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Hashtag" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Hashtag";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Hashtag" inManagedObjectContext:moc_];
}

- (HashtagID*)objectID {
	return (HashtagID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"countValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"count"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic count;

- (int64_t)countValue {
	NSNumber *result = [self count];
	return [result longLongValue];
}

- (void)setCountValue:(int64_t)value_ {
	[self setCount:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveCountValue {
	NSNumber *result = [self primitiveCount];
	return [result longLongValue];
}

- (void)setPrimitiveCountValue:(int64_t)value_ {
	[self setPrimitiveCount:[NSNumber numberWithLongLong:value_]];
}

@dynamic name;

@dynamic search;

@end

