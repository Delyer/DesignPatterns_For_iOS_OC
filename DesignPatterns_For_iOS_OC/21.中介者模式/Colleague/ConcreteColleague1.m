//
//  ConcreteColleague1.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "ConcreteColleague1.h"
#import "Mediator.h"

@implementation ConcreteColleague1

- (void)send:(NSString *)message{
    NSLog(@"同事1 发送了信息");
    [self.mediator send:message colleague:self];
}

- (void)notify:(NSString *)message{
    NSLog(@"%@%@",@"同事1 得到消息:", message);
}
@end
