//
//  TShirts.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "TShirts.h"

@implementation TShirts

- (void)show{
    [self addedBehavior];
    [super show];
}

- (void)addedBehavior{
    NSLog(@"大T恤 （ConcreteDecorator添加的装饰功能，相当于对Component进行装饰）");
}

@end
