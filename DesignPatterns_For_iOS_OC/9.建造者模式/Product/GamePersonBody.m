//
//  GamePersonBody.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "GamePersonBody.h"

@interface GamePersonBody()
@property (nonatomic, strong) NSString *name;
@end

@implementation GamePersonBody

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
        [self createBody];
    }
    return self;
}

- (void)createBody{
    NSLog(@"创建%@组件的具体过程",_name);
}

@end
