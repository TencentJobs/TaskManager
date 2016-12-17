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
    
    if (tableColumn == tableView.tableColumns[0]){
        cell.imageView.image = nil;
        cell.textField.stringValue = @"hello";
    }
    
    if (tableColumn == tableView.tableColumns[1]){
        cell.imageView.image = nil;
        cell.textField.stringValue = @"confiwang";
    }
    
    if (tableColumn == tableView.tableColumns[2]){
        cell.imageView.image = nil;
        cell.textField.stringValue = @"must";
    }
    
    if (tableColumn == tableView.tableColumns[3]){
        cell.imageView.image = nil;
        cell.textField.stringValue = @"be";
    }
    
    if (tableColumn == tableView.tableColumns[4]){
        cell.imageView.image = nil;
        cell.textField.stringValue = @"a";
    }
    
    if (tableColumn == tableView.tableColumns[5]){
        cell.imageView.image = nil;
        cell.textField.stringValue = @"good";
    }
    
    if (tableColumn == tableView.tableColumns[6]){
        cell.imageView.image = nil;
        cell.textField.stringValue = @"boy";
    }
    
    
    return cell;
}
@end
