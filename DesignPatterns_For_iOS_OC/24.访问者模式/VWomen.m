//
//  VWomen.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "VWomen.h"
#import "Action.h"

@implementation VWomen
- (void)accept:(Action *)visitor{
    [visitor getWomenConculsion:self];
}
@end
