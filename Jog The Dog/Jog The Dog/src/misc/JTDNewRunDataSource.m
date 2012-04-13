//
//  JTDNewRunDataSource.m
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/7/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDNewRunDataSource.h"
#import "JTDIncludes.h"
#import "JTDNewRunController.h"
@implementation JTDNewRunDataSource

-(id)init{
    self = [super init];
    
    if(self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateData:) name:kNewRunData object:nil];
    }
    return self;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    const NSUInteger row = indexPath.row;
    
    if(row < [self.dataList count]){
        JTDNewRunController * newRun = [[JTDNewRunController alloc]initWithNibName:@"ExpandedRun" bundle:nil];
        newRun.currentRun = [self.dataList objectAtIndex:row];
        [self.viewController.navigationController pushViewController:newRun animated:YES];
        [newRun release];
    }
}

@end
