//
//  ForenoonState.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "ForenoonState.h"
#import "NoonState.h"

@implementation ForenoonState

- (void)writeProgramWithWork:(Work *)work{
    if (work.hour < 12) {
        NSLog(@"当前时间：%ld 点 上午工作，精神百倍",work.hour);
    }else{
        [work setWorkState:[[NoonState alloc] init]];
        [work wtiteProgram];
    }
}

@end
