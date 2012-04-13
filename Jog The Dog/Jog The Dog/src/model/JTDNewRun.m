//
//  JTDNewRun.m
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/7/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import "JTDNewRun.h"
#import "JTDIncludes.h"

@implementation JTDNewRun

@synthesize name, distance, breed, address, rating, runDistance;
-(id)initWithJson:(NSDictionary *)json
{
    self = [super initWithJson:json];
    
    if(self) {
        self->name = [[json objectForKey:kJsonName]retain];
        self->breed = [[json  objectForKey:kJsonBreed]retain];
        self->distance = [[json objectForKey:kJsonDistance]retain];
        self->runDistance = [[json objectForKey:kJsonRunDistance]retain];
        self->address = [[json objectForKey:kJsonAddress]retain];
        self->rating = [[json objectForKey:kJsonRating]retain];
    }
    
    return self;
}

-(void)dealloc
{
    [self->rating release];
    [self->address release];
    [self->name release];
    [self->breed release];
    [self->distance release];
    [self->runDistance release];
    [super dealloc];
}

-(NSString *)getSubText
{
    return [NSString stringWithFormat:@"%@ miles away - %@", self->distance, self->breed];
}

-(NSString *)getText
{
    return self->name;
}

@end
