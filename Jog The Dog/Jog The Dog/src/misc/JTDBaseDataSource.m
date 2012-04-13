//
//  JTDBaseDataSource.m
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 3/26/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDBaseDataSource.h"
#import "JTDCellProtocol.h"
@implementation JTDBaseDataSource
@synthesize delegate, viewController, dataList;

-(id)initWithArray:(NSArray*)cellData
{
    self = [super init];
    if(self) {
        self->dataList = [cellData retain];
    }
    return self;
}

-(void)dealloc
{
    [self->dataList release];
    [super dealloc];
}

-(void)updateData:(NSNotification *)notification
{
    [self->dataList release];
    self->dataList = [notification.object retain];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self->dataList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellId = @"dogCell";
    const NSUInteger row = indexPath.row;
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId]autorelease];
    }
    
    if([self->dataList count] > row) {
        NSObject<JTDCellProtocol>* cellData = [self->dataList objectAtIndex:row];
        cell.textLabel.text = cellData.text;
        cell.detailTextLabel.text = cellData.subText;
    }
    
    return cell;
}
@end
