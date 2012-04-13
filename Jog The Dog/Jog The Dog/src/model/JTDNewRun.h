//
//  JTDNewRun.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/7/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JTDBaseObject.h"
@interface JTDNewRun : JTDBaseObject
{
    NSString * distance;
    NSString * name;
    NSString * breed;
    NSString * address;
    NSString * rating;
    NSString * runDistance;
}
-(id)initWithJson:(NSDictionary *)json;

@property (nonatomic, readonly) NSString * name;
@property (nonatomic, readonly) NSString * distance;
@property (nonatomic, readonly) NSString * breed;
@property (nonatomic, readonly) NSString * address;
@property (nonatomic, readonly) NSString * rating;
@property (nonatomic, readonly) NSString * runDistance;
@end
