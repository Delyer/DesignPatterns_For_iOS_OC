//
//  ConcreteSubject.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/10.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "ConcreteSubject.h"

@implementation ConcreteSubject

- (void)notify{
    NSLog(@"秘书通知：老板回来了，大家赶紧撤");
    for (id<ObserveProtocol> observer in [self getObserverList]) {
        [observer update];
    }
}

@end
