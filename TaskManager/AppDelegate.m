//
//  AppDelegate.m
//  TaskManager
//
//  Created by confiwang on 2016/10/26.
//  Copyright © 2016年 TencentJobs. All rights reserved.
//

#import "AppDelegate.h"
#import "CFMainWindowController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *mainWindow;
@property (nonatomic, strong) CFMainWindowController* mainWindowController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.mainWindowController =  [[CFMainWindowController alloc] initWithWindowNibName:@"CFMainWindowController"];
    [self.mainWindowController showWindow:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag {
    return YES;
}
@end
