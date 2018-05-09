//
//  GamePersonArm.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "GamePersonArm.h"

@interface GamePersonArm()
@property (nonatomic, strong) NSString *name;
@end

@implementation GamePersonArm

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
        [self createArm];
    }
    return self;
}

- (void)createArm{
    NSLog(@"创建%@组件的具体过程",_name);
}

@end
