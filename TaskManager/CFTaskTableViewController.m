//
//  CFTaskTableViewController.m
//  TaskManager
//
//  Created by confiwang on 29/01/2017.
//  Copyright © 2017 TencentJobs. All rights reserved.
//

#import "CFTaskTableViewController.h"

@interface CFTaskTableViewController () <NSTableViewDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSTableView *mainTableView;

@end

@implementation CFTaskTableViewController

#pragma mark - lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

#pragma mark - public

-(void) adjustColumnWidth {
    NSArray<NSTableColumn *> *tableColums = [self.mainTableView tableColumns];
    
    for (NSTableColumn *tableColumn in tableColums){
        [tableColumn setWidth:self.view.frame.size.width/tableColums.count];
    }
}

# pragma mark - tableview delegate
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

//列宽度改变通知
-(void)tableViewColumnDidResize:(NSNotification *)notification {

}


@end
