//
//  RestState.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "RestState.h"

@implementation RestState

- (void)writeProgramWithWork:(Work *)work{
    NSLog(@"当前时间：%ld 点 下班回家了",work.hour);
}

@end
