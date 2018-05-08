//
//  BigTrouser.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "BigTrouser.h"

@implementation BigTrouser

- (void)show{
    self.size = 30;
    [self addedBehavior];
    [super show];
}

- (void)addedBehavior{
    NSLog(@"%ld号垮裤 （ConcreteDecorator添加的装饰功能，相当于对Component进行装饰）",self.size);
}
@end
