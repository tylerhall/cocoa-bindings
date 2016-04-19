// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Tweet.m instead.

#import "_Tweet.h"

const struct TweetAttributes TweetAttributes = {
	.dateTime = @"dateTime",
	.guid = @"guid",
	.text = @"text",
};

const struct TweetRelationships TweetRelationships = {
	.search = @"search",
	.user = @"user",
};

@implementation TweetID
@end

@implementation _Tweet

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Tweet" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Tweet";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Tweet" inManagedObjectContext:moc_];
}

- (TweetID*)objectID {
	return (TweetID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"guidValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"guid"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic dateTime;

@dynamic guid;

- (int64_t)guidValue {
	NSNumber *result = [self guid];
	return [result longLongValue];
}

- (void)setGuidValue:(int64_t)value_ {
	[self setGuid:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveGuidValue {
	NSNumber *result = [self primitiveGuid];
	return [result longLongValue];
}

- (void)setPrimitiveGuidValue:(int64_t)value_ {
	[self setPrimitiveGuid:[NSNumber numberWithLongLong:value_]];
}

@dynamic text;

@dynamic search;

@dynamic user;

@end

