// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to User.m instead.

#import "_User.h"

const struct UserAttributes UserAttributes = {
	.followers = @"followers",
	.following = @"following",
	.guid = @"guid",
	.listed = @"listed",
	.updates = @"updates",
	.username = @"username",
};

const struct UserRelationships UserRelationships = {
	.tweets = @"tweets",
};

@implementation UserID
@end

@implementation _User

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"User";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"User" inManagedObjectContext:moc_];
}

- (UserID*)objectID {
	return (UserID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"followersValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"followers"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"followingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"following"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"guidValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"guid"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"listedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"listed"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"updatesValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"updates"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic followers;

- (int64_t)followersValue {
	NSNumber *result = [self followers];
	return [result longLongValue];
}

- (void)setFollowersValue:(int64_t)value_ {
	[self setFollowers:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveFollowersValue {
	NSNumber *result = [self primitiveFollowers];
	return [result longLongValue];
}

- (void)setPrimitiveFollowersValue:(int64_t)value_ {
	[self setPrimitiveFollowers:[NSNumber numberWithLongLong:value_]];
}

@dynamic following;

- (int64_t)followingValue {
	NSNumber *result = [self following];
	return [result longLongValue];
}

- (void)setFollowingValue:(int64_t)value_ {
	[self setFollowing:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveFollowingValue {
	NSNumber *result = [self primitiveFollowing];
	return [result longLongValue];
}

- (void)setPrimitiveFollowingValue:(int64_t)value_ {
	[self setPrimitiveFollowing:[NSNumber numberWithLongLong:value_]];
}

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

@dynamic listed;

- (int64_t)listedValue {
	NSNumber *result = [self listed];
	return [result longLongValue];
}

- (void)setListedValue:(int64_t)value_ {
	[self setListed:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveListedValue {
	NSNumber *result = [self primitiveListed];
	return [result longLongValue];
}

- (void)setPrimitiveListedValue:(int64_t)value_ {
	[self setPrimitiveListed:[NSNumber numberWithLongLong:value_]];
}

@dynamic updates;

- (int64_t)updatesValue {
	NSNumber *result = [self updates];
	return [result longLongValue];
}

- (void)setUpdatesValue:(int64_t)value_ {
	[self setUpdates:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveUpdatesValue {
	NSNumber *result = [self primitiveUpdates];
	return [result longLongValue];
}

- (void)setPrimitiveUpdatesValue:(int64_t)value_ {
	[self setPrimitiveUpdates:[NSNumber numberWithLongLong:value_]];
}

@dynamic username;

@dynamic tweets;

- (NSMutableSet*)tweetsSet {
	[self willAccessValueForKey:@"tweets"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tweets"];

	[self didAccessValueForKey:@"tweets"];
	return result;
}

@end

