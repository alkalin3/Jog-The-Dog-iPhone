//
//  JTDNewRunsDataSource.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 3/26/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JTDBaseObject.h"

@protocol JTDDataSourceDelegate <NSObject>
@required
-(void)didSelectObj:(JTDBaseObject *)obj;
@end

@interface JTDBaseDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>
{
    NSArray * dataList;
}
-(id)initWithArray:(NSArray *)cellData;
-(void)updateData:(NSNotification *)notification;

@property (nonatomic, assign) IBOutlet UIViewController * viewController; 
@property (nonatomic, assign) NSObject * delegate;
@property (nonatomic, readonly) NSArray * dataList;
@end
