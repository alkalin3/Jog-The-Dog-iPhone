//
//  JTDRunController.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/8/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDBaseController.h"
#import "JTDNewRun.h"
@interface JTDRunController : JTDBaseController
{
    NSDate * startDate;
    UIButton * startButton;
}
@property (nonatomic, retain) IBOutlet UIButton * startButton;
@property (nonatomic, retain) JTDNewRun * run;
-(IBAction)startRun;

@end
