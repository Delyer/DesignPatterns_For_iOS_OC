//
//  Waiter.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Waiter.h"

@interface Waiter()
@property (nonatomic, strong) NSMutableArray *commandList;
@end

@implementation Waiter

- (instancetype)init{
    self = [super init];
    if (self) {
        _commandList = [NSMutableArray array];
    }
    return self;
}

- (void)setOrder:(Command *)command{
    if ([command isKindOfClass:[BakeChickenWingCommand class]]) {
        NSLog(@"服务员：鸡翅没有了，请点别的烧烤！！！");
    }else{
        [self.commandList addObject:command];
        NSLog(@"添加订单：%@",[command commandString]);
    }
}

- (void)cancleOrder:(Command *)command{
    [self.commandList removeObject:command];
    NSLog(@"取消订单：%@",[command commandString]);
}

- (void)notifyExcuteAllCommand{
    for (Command *command in self.commandList) {
        [command excuteCommand];
    }
}

@end
