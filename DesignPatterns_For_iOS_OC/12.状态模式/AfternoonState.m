//
//  AfternoonState.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "AfternoonState.h"
#import "EveningState.h"

@implementation AfternoonState

- (void)writeProgramWithWork:(Work *)work{
    if (work.hour < 18) {
        NSLog(@"当前时间：%ld 点 下午 状态还不错，继续努力",work.hour);
    }else{
        [work setWorkState:[[EveningState alloc] init]];
        [work wtiteProgram];
    }
}

@end
