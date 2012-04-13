//
//  JTDCurrentRunController.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/12/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDBaseController.h"

@interface JTDCurrentRunController : JTDBaseController <UIAlertViewDelegate>
{
    NSDate * startDate;
    NSTimer * timer;
}

@property (nonatomic, retain) IBOutlet UILabel * elapsedTime;

- (IBAction)stopRun:(id)sender;
@end
