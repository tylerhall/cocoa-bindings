//
//  AppDelegate.m
//  Incoming
//
//  Created by Hall Tyler on 1/23/16.
//  Copyright © 2016 Click On Tyler. All rights reserved.
//

#import "AppDelegate.h"
#import "MainWindowController.h"
#import "TwitterHelper.h"

@interface AppDelegate ()

@property (nonatomic, strong) MainWindowController *mainWindowController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [MagicalRecord setupCoreDataStackWithAutoMigratingSqliteStoreNamed:@"IncomingDatabase"];

    self.mainWindowController = [[MainWindowController alloc] initWithWindowNibName:NSStringFromClass([MainWindowController class])];
    [self.mainWindowController showWindow:nil];

    [[TwitterHelper sharedInstance] startAllSearches];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{

}

@end
