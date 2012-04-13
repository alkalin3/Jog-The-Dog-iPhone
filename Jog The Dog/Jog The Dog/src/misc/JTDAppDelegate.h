//
//  JTDAppDelegate.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 3/26/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  JTDTableViewController;
@interface JTDAppDelegate : UIResponder <UIApplicationDelegate>
{
    NSMutableSet * dataSources;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController * tabBarController;
@property (nonatomic, retain) IBOutlet JTDTableViewController * recentRuns;
@property (nonatomic, retain) IBOutlet JTDTableViewController * newRuns;

@end
