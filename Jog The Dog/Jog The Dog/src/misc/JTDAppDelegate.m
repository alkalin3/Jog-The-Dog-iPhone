//
//  JTDAppDelegate.m
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 3/26/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDAppDelegate.h"
#import "JTDTableViewController.h"
#import "JTDBaseObject.h"
#import "JTDIncludes.h"
#import "JTDNewRun.h"

@implementation JTDAppDelegate

@synthesize window = _window, tabBarController, newRuns, recentRuns;

- (void)dealloc
{
    [self->dataSources release];
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window.rootViewController = self->tabBarController;
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self dataChanged];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void)dataChanged
{
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:3];
    JTDNewRun * newRun = [[JTDNewRun alloc]initWithJson:[NSDictionary dictionaryWithObjectsAndKeys:@"Stewart", kJsonName, @"Beagle", kJsonBreed, @"0.2", kJsonDistance, @"2523 W. Winnemac Ave. Chicago, IL 60625", kJsonAddress, @"5.0/5.0", kJsonRating, nil]];
    [array addObject:newRun];
    [newRun release];
    
    newRun = [[JTDNewRun alloc]initWithJson:[NSDictionary dictionaryWithObjectsAndKeys:@"Porthos", kJsonName, @"Beagle", kJsonBreed, @"0.3", kJsonDistance, @"600 W. Chicago Ave. Chicago, IL 60654", kJsonAddress, @"5.0/5.0", kJsonRating, nil]];
    [array addObject:newRun];
    [newRun release];
    
    newRun = [[JTDNewRun alloc]initWithJson:[NSDictionary dictionaryWithObjectsAndKeys:@"Maximus", kJsonName, @"Pitbull", kJsonBreed, @"1.5", kJsonDistance, @"600 W. Chicago Ave. Chicago, IL 60654", kJsonAddress, @"5.0/5.0", kJsonRating, nil]];
    [array addObject:newRun];
    [newRun release];
    
    array = [[array copy]autorelease];
    NSNotificationCenter * notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter postNotificationName:kNewRunData object:array];
    
}

@end
