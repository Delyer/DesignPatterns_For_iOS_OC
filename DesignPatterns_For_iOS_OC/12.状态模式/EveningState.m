//
//  EveningState.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "EveningState.h"
#import "RestState.h"
#import "SleepingState.h"

@implementation EveningState

- (void)writeProgramWithWork:(Work *)work{
    if (work.finished) {
        [work setWorkState:[[RestState alloc] init]];
        [work wtiteProgram];
    }else{
        if (work.hour < 21) {
            NSLog(@"当前时间：%ld 点 加班哦，疲惫至极",work.hour);
        }else{
            [work setWorkState:[[SleepingState alloc] init]];
            [work wtiteProgram];
        }
    }
}

@end
