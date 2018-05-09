//
//  GamePersonLeg.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "GamePersonLeg.h"

@interface GamePersonLeg()
@property (nonatomic, strong) NSString *name;
@end

@implementation GamePersonLeg

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
        [self createLeg];
    }
    return self;
}

- (void)createLeg{
    NSLog(@"创建%@组件的具体过程",_name);
}

@end
