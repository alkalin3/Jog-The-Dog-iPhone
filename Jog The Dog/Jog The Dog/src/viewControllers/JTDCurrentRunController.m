//
//  JTDCurrentRunController.m
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/12/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDCurrentRunController.h"

@interface JTDCurrentRunController ()

@end

@implementation JTDCurrentRunController
@synthesize elapsedTime;

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self->startDate = [[NSDate date]retain];
    self->timer = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)updateTime
{
    NSDate * currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:self->startDate];
    NSDate * timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss.SS"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    NSString * timeString=[dateFormatter stringFromDate:timerDate];
    self.elapsedTime.text = timeString;
    [dateFormatter release];
    
}

- (IBAction)stopRun:(id)sender
{
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Are you really done running?" message:@"Make sure you're done you won't be able to restart this run" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
    
    [alert show];
    [alert release];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex) {
        [self->timer invalidate];
        self->timer = nil;
        [self.navigationController setNavigationBarHidden:NO animated:YES];
        
    }
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
