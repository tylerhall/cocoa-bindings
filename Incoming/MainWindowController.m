//
//  MainWindowController.m
//  Incoming
//
//  Created by Hall Tyler on 1/25/16.
//  Copyright © 2016 Click On Tyler. All rights reserved.
//

#import "MainWindowController.h"
#import "Search.h"
#import "Tweet.h"
#import "TwitterHelper.h"

@interface MainWindowController () <NSTableViewDelegate>

@property (weak) IBOutlet NSManagedObjectContext *managedObjectContext;
@property (weak) IBOutlet NSArrayController *acSearches;
@property (weak) IBOutlet NSArrayController *acTweets;
@property (strong) NSString *newestSearchGUID;
@property (weak) IBOutlet NSWindow *addSearchSheet;
@property (weak) IBOutlet NSTextField *txtNewSearch;
@property (weak) IBOutlet NSTableView *tblTweets;
@property (weak) IBOutlet WebView *webView;

@end

@implementation MainWindowController

- (void)windowDidLoad
{
    [super windowDidLoad];
    self.managedObjectContext = [NSManagedObjectContext MR_defaultContext];
}

- (IBAction)addSearch:(id)sender
{
    [self.window beginSheet:self.addSearchSheet completionHandler:nil];
}

- (IBAction)dismissNewSearchSheet:(id)sender {
    [NSApp endSheet:self.addSearchSheet];
    [self.addSearchSheet orderOut:nil];
}

- (IBAction)newSearchCallback:(id)sender {
    [NSApp endSheet:self.addSearchSheet];
    [self.addSearchSheet orderOut:nil];

    __block Search *search;

    [MagicalRecord saveWithBlock:^(NSManagedObjectContext * _Nonnull localContext) {
        search = [Search MR_createEntityInContext:localContext];
        search.query = self.txtNewSearch.stringValue;

        CFUUIDRef theUUID = CFUUIDCreate(NULL);
        CFStringRef UUIDString = CFUUIDCreateString(NULL, theUUID);
        CFRelease(theUUID);
        search.guid = (__bridge NSString *)(UUIDString);
        self.newestSearchGUID = search.guid;

    }completion:^(BOOL contextDidSave, NSError * _Nullable error) {
        if(contextDidSave) {
            [[TwitterHelper sharedInstance] startSearchWithGUID:self.newestSearchGUID];
            [[TwitterHelper sharedInstance] fetchOldTweetsForSearchWithGUID:self.newestSearchGUID];
        }
    }];
}

- (IBAction)deleteSearch:(id)sender
{
    if(self.acSearches.selectedObjects.count == 0) {
        return;
    }

    Search *search = [self.acSearches selectedObjects][0];

    [[TwitterHelper sharedInstance] stopSearchWithGUID:search.guid];

    [MagicalRecord saveWithBlock:^(NSManagedObjectContext * _Nonnull localContext) {
        [search MR_deleteEntityInContext:localContext];
    } completion:^(BOOL contextDidSave, NSError * _Nullable error) {

    }];
}

- (void)tableViewSelectionDidChange:(NSNotification *)notification
{
    NSInteger selectionIndex = self.tblTweets.selectedRow;
    if(selectionIndex < 0) {
        return;
    }

    Tweet *tweet = self.acTweets.arrangedObjects[selectionIndex];
    [self loadTweetIntoWebView:tweet];
}

- (void)loadTweetIntoWebView:(Tweet *)tweet
{
    NSString *html = [NSString stringWithFormat:@"<h1>%@</h1>", tweet.text];
    [[self.webView mainFrame] loadHTMLString:html baseURL:[NSURL URLWithString:@"/"]];
}

@end
