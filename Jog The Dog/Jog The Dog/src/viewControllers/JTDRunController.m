//
//  JTDRunController.m
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/8/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDRunController.h"
#import "JTDNewRunController.h"

@interface JTDRunController ()

@end

@implementation JTDRunController
@synthesize startButton, run;

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

@end
