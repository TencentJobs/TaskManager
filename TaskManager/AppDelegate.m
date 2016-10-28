//
//  AppDelegate.m
//  TaskManager
//
//  Created by confiwang on 2016/10/26.
//  Copyright © 2016年 TencentJobs. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTableView *taskTableVIew;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row{
    return 30;
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return 10;
}

-(void)tableViewSelectionDidChange:(NSNotification *)notification{
    NSLog(@"%ld",(long)[self.taskTableVIew numberOfRows]);
}
@end
