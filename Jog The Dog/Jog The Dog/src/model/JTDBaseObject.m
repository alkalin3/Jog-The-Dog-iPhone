//
//  JTDBaseObject.m
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/4/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDBaseObject.h"

@implementation JTDBaseObject
@synthesize text, subText, objId;

-(id)initWithJson:(NSDictionary *)json
{
    self = [super init];
    
    return self;
}

-(NSString *)getSubText
{
    return @"Sub Text";
}

-(NSString *)getText
{
    return @"Text";
}

@end
