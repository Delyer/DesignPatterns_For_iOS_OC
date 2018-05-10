//
//  main.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/8.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExampleManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [ExampleManager executeMethod:@selector(simpleFactoryPattern) desc:@"简单工厂模式"];
        [ExampleManager executeMethod:@selector(strategyPattern) desc:@"策略模式"];
        [ExampleManager executeMethod:@selector(decoratorPattern) desc:@"装饰器模式"];
        [ExampleManager executeMethod:@selector(proxyPattern) desc:@"代理模式"];
        [ExampleManager executeMethod:@selector(factoryPattern) desc:@"工厂模式"];
        [ExampleManager executeMethod:@selector(prototypePattern) desc:@"原型模式"];
        [ExampleManager executeMethod:@selector(templateMethodPattern) desc:@"模板方法模式"];
        [ExampleManager executeMethod:@selector(facadePattern) desc:@"外观模式"];
        [ExampleManager executeMethod:@selector(builderPattern) desc:@"建造者模式"];
        [ExampleManager executeMethod:@selector(observerPattern) desc:@"观察者模式"];
    }
    return 0;
}

