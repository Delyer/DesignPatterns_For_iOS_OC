//
//  BakeChickenWingCommand.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "BakeChickenWingCommand.h"

@implementation BakeChickenWingCommand

- (void)excuteCommand{
    [self.barbecuer bakeChickenWing];
}

- (NSString *)commandString{
    return @"烤鸡翅！！！";
}

@end
