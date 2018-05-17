//
//  Command.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

//抽象命令类：只需要确定烤肉串者（命令执行者）是谁
#import <Foundation/Foundation.h>
#import "Barbecuer.h"

@interface Command : NSObject
@property (nonatomic, strong) Barbecuer *barbecuer;

- (instancetype)initWithBarbecuer:(Barbecuer *)barbecuer;
- (void)excuteCommand;
- (NSString *)commandString;

@end
