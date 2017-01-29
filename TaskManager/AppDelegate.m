//
//  AppDelegate.m
//  TaskManager
//
//  Created by confiwang on 2016/10/26.
//  Copyright © 2016年 TencentJobs. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate () <NSTableViewDelegate, NSTableViewDataSource, NSWindowDelegate>

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
        cell.textField.stringValue = [@"hello" stringByAppendingFormat:@"%ld0",(long)row];
    }
    
    if (tableColumn == tableView.tableColumns[1]){
        cell.imageView.image = nil;
        cell.textField.stringValue = [@"confiwang" stringByAppendingFormat:@"%ld1",(long)row];
    }
    
    if (tableColumn == tableView.tableColumns[2]){
        cell.imageView.image = nil;
        cell.textField.stringValue = [@"must" stringByAppendingFormat:@"%ld2",(long)row];
    }
    
    if (tableColumn == tableView.tableColumns[3]){
        cell.imageView.image = nil;
        cell.textField.stringValue = [@"be" stringByAppendingFormat:@"%ld3",(long)row];
    }
    
    if (tableColumn == tableView.tableColumns[4]){
        cell.imageView.image = nil;
        cell.textField.stringValue = [@"a" stringByAppendingFormat:@"%ld4",(long)row];
    }
    
    if (tableColumn == tableView.tableColumns[5]){
        cell.imageView.image = nil;
        cell.textField.stringValue = [@"good" stringByAppendingFormat:@"%ld5",(long)row];
    }
    
    if (tableColumn == tableView.tableColumns[6]){
        cell.imageView.image = nil;
        cell.textField.stringValue = [@"boy" stringByAppendingFormat:@"%ld6",(long)row];
    }
    
    
    return cell;
}

- (BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row{

    return NO;
}

-(BOOL)tableView:(NSTableView *)tableView shouldSelectTableColumn:(NSTableColumn *)tableColumn {
    return NO;
}

- (BOOL)selectionShouldChangeInTableView:(NSTableView *)tableView {
    
    NSInteger row = [tableView clickedRow];
    NSInteger column = [tableView clickedColumn];
    NSLog(@"%ld,%ld", row, column);
    
    NSTableCellView *cellView = [tableView viewAtColumn:column row:row makeIfNecessary:YES];
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:cellView.textField.stringValue];
    [alert runModal];
    return YES;
}

-(void)windowDidResize:(NSNotification *)notification {
    NSLog(@"confiwangtest,%f",self.window.frame.size.width);
}

@end
