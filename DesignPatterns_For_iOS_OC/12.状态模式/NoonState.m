//
//  NoonState.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "NoonState.h"
#import "AfternoonState.h"

@implementation NoonState

- (void)writeProgramWithWork:(Work *)work{
    if (work.hour < 13) {
        NSLog(@"当前时间：%ld 点 饿了，午饭：犯困，午休",work.hour);
    }else{
        [work setWorkState:[[AfternoonState alloc] init]];
        [work wtiteProgram];
    }
}

@end
