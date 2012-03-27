//
//  JTDNewRunsDataSource.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 3/26/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JTDModel;
@interface JTDBaseDataSource : NSObject <UITableViewDataSource>
{
    JTDModel * model;
}

@property (nonatomic, retain) IBOutlet JTDModel * model;
@end
