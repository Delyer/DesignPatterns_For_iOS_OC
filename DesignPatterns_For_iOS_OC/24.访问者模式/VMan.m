//
//  VMan.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "VMan.h"
#import "Action.h"

@implementation VMan
- (void)accept:(Action *)visitor{
    [visitor getManConculsion:self];
}

@end
