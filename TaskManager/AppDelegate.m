//
//  AppDelegate.m
//  TaskManager
//
//  Created by confiwang on 2016/10/26.
//  Copyright © 2016年 TencentJobs. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate () <NSTableViewDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTableView *mainTableView;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return 9;
}

-(CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row {
    return 30;
}

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    NSTableCellView *cell = (NSTableCellView *)[tableView makeViewWithIdentifier:@"SUNCell" owner:nil];
    
    cell.imageView.image = nil;
    cell.textField.stringValue = @"confiwang";
    
    return cell;
}
@end
