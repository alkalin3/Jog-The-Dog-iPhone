//
//  JTDTableViewController.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 3/26/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDBaseController.h"

@interface JTDTableViewController : JTDBaseController
{
    UITableView * tableView;
}

@property (nonatomic, retain) IBOutlet UITableView * tableView;
@end
