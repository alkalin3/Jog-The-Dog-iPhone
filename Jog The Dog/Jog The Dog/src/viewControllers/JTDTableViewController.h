//
//  JTDTableViewController.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 3/26/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDBaseController.h"

@class JTDBaseDataSource;
@interface JTDTableViewController : JTDBaseController
{
    UITableView * tableView;
    JTDBaseDataSource * dataSource;
}
@property (nonatomic, retain) IBOutlet UITableView * tableView;
@property (nonatomic, retain) IBOutlet JTDBaseDataSource * dataSource;
@end
