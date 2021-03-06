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
        [ExampleManager executeMethod:@selector(abstractFactoryPattern) desc:@"抽象工厂模式"];
        [ExampleManager executeMethod:@selector(statePattern) desc:@"状态模式"];
        [ExampleManager executeMethod:@selector(adapterPattern) desc:@"适配器模式"];
        [ExampleManager executeMethod:@selector(mementoPattern) desc:@"备忘录模式"];
        [ExampleManager executeMethod:@selector(compositPattern) desc:@"组合模式"];
        [ExampleManager executeMethod:@selector(iteratorPattern) desc:@"迭代器模式"];
        [ExampleManager executeMethod:@selector(singletonPattern) desc:@"单例模式"];
        [ExampleManager executeMethod:@selector(bridgePattern) desc:@"桥接模式"];
        [ExampleManager executeMethod:@selector(commandPattern) desc:@"命令模式"];
        [ExampleManager executeMethod:@selector(chainOfResponsibiltityPattern) desc:@"职责链模式"];
        [ExampleManager executeMethod:@selector(mediatorPattern) desc:@"中介者模式"];
        [ExampleManager executeMethod:@selector(flyweightPattern) desc:@"享元模式"];
        [ExampleManager executeMethod:@selector(interpreterPattern) desc:@"解释器模式"];
        [ExampleManager executeMethod:@selector(visitorPattern) desc:@"访问者模式"];
    }
    return 0;
}

