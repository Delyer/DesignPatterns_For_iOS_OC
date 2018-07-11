//
//  ConcreteMediator.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "ConcreteMediator.h"
#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"

@implementation ConcreteMediator

- (void)send:(NSString *)message colleague:(Colleague *)colleague{
    if ([colleague isKindOfClass:[ConcreteColleague1 class]]) {
        [_colleague1 notify:message];
    }else{
        [_colleague2 notify:message];
    }
}

@end
