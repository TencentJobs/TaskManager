//
//  CFMainWindowController.m
//  TaskManager
//
//  Created by confiwang on 29/01/2017.
//  Copyright © 2017 TencentJobs. All rights reserved.
//

#import "CFMainWindowController.h"
#import "CFTaskTableViewController.h"
@interface CFMainWindowController () <NSWindowDelegate>

@property (nonatomic, strong) CFTaskTableViewController *taskTableViewController;

@end

@implementation CFMainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
    self.taskTableViewController = [[CFTaskTableViewController alloc] init];
    
    [self.window.contentView addSubview: self.taskTableViewController.view];
    self.taskTableViewController.view.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
    [self.taskTableViewController.view setFrameSize:NSMakeSize(self.window.frame.size.width, self.window.frame.size.height)];
}

-(void)windowDidResize:(NSNotification *)notification {
    NSLog(@"confiwangtest window did resize");
    [self.taskTableViewController adjustColumnWidth];
}
@end
