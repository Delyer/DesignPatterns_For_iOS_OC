//
//  ExampleManager.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/25.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExampleManager : NSObject

//简单工厂模式
+ (void)simpleFactoryPattern;
//策略模式
+ (void)strategyPattern;
//装饰器模式
+ (void)decoratorPattern;
//代理模式
+ (void)proxyPattern;
//工厂模式
+ (void)factoryPattern;
//原型模式
+ (void)prototypePattern;
//模板方法模式
+ (void)templateMethodPattern;
//外观模式
+ (void)facadePattern;
//建造者模式
+ (void)builderPattern;
//观察者模式
+ (void)observerPattern;
//抽象工厂模式
+ (void)abstractFactoryPattern;
//状态模式
+ (void)statePattern;
//适配器模式
+ (void)adapterPattern;
//备忘录模式
+ (void)mementoPattern;
//组合模式
+ (void)compositPattern;
//迭代器模式
+ (void)iteratorPattern;
//单例模式
+ (void)singletonPattern;
//桥接模式
+ (void)bridgePattern;
//命令模式
+ (void)commandPattern;
//职责链模式
+ (void)chainOfResponsibiltityPattern;
//中介者模式
+ (void)mediatorPattern;
//享元模式
+ (void)flyweightPattern;
//解释器模式
+ (void)interpreterPattern;
//访问者模式
+ (void)visitorPattern;

+ (void)executeMethod:(SEL)sel desc:(NSString *)desc;

@end
