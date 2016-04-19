// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Search.m instead.

#import "_Search.h"

const struct SearchAttributes SearchAttributes = {
	.guid = @"guid",
	.query = @"query",
};

const struct SearchRelationships SearchRelationships = {
	.hashtags = @"hashtags",
	.links = @"links",
	.tweets = @"tweets",
};

@implementation SearchID
@end

@implementation _Search

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Search" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Search";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Search" inManagedObjectContext:moc_];
}

- (SearchID*)objectID {
	return (SearchID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic guid;

@dynamic query;

@dynamic hashtags;

- (NSMutableSet*)hashtagsSet {
	[self willAccessValueForKey:@"hashtags"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"hashtags"];

	[self didAccessValueForKey:@"hashtags"];
	return result;
}

@dynamic links;

- (NSMutableSet*)linksSet {
	[self willAccessValueForKey:@"links"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"links"];

	[self didAccessValueForKey:@"links"];
	return result;
}

@dynamic tweets;

- (NSMutableSet*)tweetsSet {
	[self willAccessValueForKey:@"tweets"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tweets"];

	[self didAccessValueForKey:@"tweets"];
	return result;
}

@end

