//
//  JTDNewRunController.m
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/9/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDNewRunController.h"
#import "JTDNewRun.h"
#import "JTDCurrentRunController.h"

@interface JTDNewRunController ()

@end

@implementation JTDNewRunController

@synthesize name, breed, rating, address, distance, currentRun, runDistance, livesAt;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationItem.title = [NSString stringWithFormat:@"Run with %@", self.currentRun.name];
    self.name.text = self.currentRun.name;
    self.breed.text = self.currentRun.breed;
    self.rating.text = self.currentRun.rating;
    self.distance.text = [NSString stringWithFormat:@"%@ miles",self.currentRun.distance];
    self.address.text = self.currentRun.address;
    self.livesAt.text = [NSString stringWithFormat:@"%@ lives at:", self.currentRun.name];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)startRun
{
    JTDCurrentRunController * currentRun = [[JTDCurrentRunController alloc]initWithNibName:@"CurrentRun" bundle:nil];
    [self.navigationController pushViewController:currentRun animated:YES];
    [currentRun release];
}

@end
