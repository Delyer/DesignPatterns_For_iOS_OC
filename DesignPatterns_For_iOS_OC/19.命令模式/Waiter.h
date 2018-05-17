//
//  Waiter.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

//服务员类： 不用管顾客点什么烤肉，反正都是命令，只管记录订单，然后通知“烤肉串者”执行即可
#import <Foundation/Foundation.h>
#import "BakeMuttonCommand.h"
#import "BakeChickenWingCommand.h"

@interface Waiter : NSObject

//添加订单
- (void)setOrder:(Command *)command;
//取消订单
- (void)cancleOrder:(Command *)command;
//通知全部执行
- (void)notifyExcuteAllCommand;
@end
