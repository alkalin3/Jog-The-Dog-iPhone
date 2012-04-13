//
//  JTDBaseObject.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 4/4/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JTDCellProtocol.h"

@interface JTDBaseObject : NSObject <JTDCellProtocol>
{
    NSString * objId;
}
-(id)initWithJson:(NSDictionary *)json;

@property (nonatomic, retain) NSString * objId;
@property (nonatomic, readonly, getter = getText) NSString * text;
@property (nonatomic, readonly, getter = getSubText) NSString * subText;

@end
