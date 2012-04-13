//
//  JTDNewRunController.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/9/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDBaseController.h"
@class JTDNewRun;

@interface JTDNewRunController : JTDBaseController
{

}
-(IBAction)startRun;

@property (nonatomic, retain) JTDNewRun * currentRun;
@property (nonatomic, retain) IBOutlet UILabel * name;
@property (nonatomic, retain) IBOutlet UILabel * breed;
@property (nonatomic, retain) IBOutlet UILabel * distance;
@property (nonatomic, retain) IBOutlet UILabel * address;
@property (nonatomic, retain) IBOutlet UILabel * rating;
@property (nonatomic, retain) IBOutlet UILabel * runDistance;
@property (nonatomic, retain) IBOutlet UILabel * livesAt;

@end
