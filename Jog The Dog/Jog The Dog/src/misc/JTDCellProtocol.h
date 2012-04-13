//
//  JTDCellProtocol.h
//  Jog The Dog
//
//  Created by Christopher Ingebrigtsen on 3/26/12.
//  Copyright (c) 2012 Bellyflop. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JTDCellProtocol <NSObject>
@required
@property (nonatomic, readonly, getter = getText) NSString * text;
@property (nonatomic, readonly, getter = getSubText) NSString * subText;

@end
