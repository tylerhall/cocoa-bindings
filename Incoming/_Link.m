// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Link.m instead.

#import "_Link.h"

const struct LinkAttributes LinkAttributes = {
	.count = @"count",
	.url = @"url",
};

const struct LinkRelationships LinkRelationships = {
	.search = @"search",
};

@implementation LinkID
@end

@implementation _Link

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Link" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Link";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Link" inManagedObjectContext:moc_];
}

- (LinkID*)objectID {
	return (LinkID*)[super objectID];
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

@dynamic url;

@dynamic search;

@end

