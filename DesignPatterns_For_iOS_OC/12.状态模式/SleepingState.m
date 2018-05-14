//
//  SleepingState.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "SleepingState.h"

@implementation SleepingState

- (void)writeProgramWithWork:(Work *)work{
    NSLog(@"当前时间：%ld 点 不行了，睡着了",work.hour);
}

@end
