//
//  BakeMuttonCommand.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "BakeMuttonCommand.h"

@implementation BakeMuttonCommand

- (void)excuteCommand{
    [self.barbecuer bakeMuttion];
}

- (NSString *)commandString{
    return @"烤羊肉串！！！";
}
@end
