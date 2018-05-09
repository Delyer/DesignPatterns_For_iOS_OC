//
//  ExampleManager.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/25.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "ExampleManager.h"
#import "CalculatorFactory.h"

#import "CashContextFactory.h"

#import "TShirts.h"
#import "BigTrouser.h"

#import "Skill_Q.h"
#import "Skill_W.h"
#import "AnQiLa.h"

#import "SchoolGirl.h"
#import "Proxy.h"

#import "CalculateFactory.h"
#import "CalculateAddFactory.h"
#import "CalculateSubFactory.h"
#import "CalculateMulFactory.h"
#import "CalculateDivFactory.h"

#import "PrototypePerson.h"

#import "TestPaperA.h"
#import "TestPaperB.h"

#import "Facade.h"

#import "PersonBuilderDirector.h"
#import "ThinPersonBuilder.h"
#import "FatPersonBuilder.h"

@implementation ExampleManager

//简单工厂模式
+ (void)simpleFactoryPattern{
    CalculatorOperation *operationAdd = [CalculatorFactory initWithType:CalculatorTypeAdd];
    CalculatorOperation *operationSub = [CalculatorFactory initWithType:CalculatorTypeSub];
    double resultAdd = [operationAdd getResultWithNumberA:1 numberB:3];
    double resultSub = [operationSub getResultWithNumberA:1 numberB:3];
    
    NSLog(@"resultAdd = %f ; resultSub = %f",resultAdd,resultSub);
}

//策略模式
+ (void)strategyPattern{
    CashContextFactory *contextNormal = [[CashContextFactory alloc] initWithCashStrategyType:CashStrategyTypeNormal];
    NSLog(@"应该收钱=%f",[contextNormal getRealShouldAcceptMoney:200]);
    
    CashContextFactory *contextRebate = [[CashContextFactory alloc] initWithCashStrategyType:CashStrategyTypeRebate];
    NSLog(@"应该收钱=%f",[contextRebate getRealShouldAcceptMoney:200]);
    
    CashContextFactory *contextReturn = [[CashContextFactory alloc] initWithCashStrategyType:CashStrategyTypeReturn];
    NSLog(@"应该收钱=%f",[contextReturn getRealShouldAcceptMoney:200]);
}

//装饰器模式
+ (void)decoratorPattern{
    //demo1
    Person *xm = [[Person alloc] init];
    TShirts *ts = [[TShirts alloc] init];
    BigTrouser *bt= [[BigTrouser alloc] init];
    //装饰过程
    ts.person = xm;
    bt.person = ts;
    [bt show];
    
    //demo2
    Hero *hero = [[AnQiLa alloc] initWithName:@"小慕"];
    Skills *skills = [[Skills alloc] init];
    Skills *q = [[Skill_Q alloc] init];
    Skills *w = [[Skill_W alloc] init];
    skills.hero = hero;
    q.hero = skills;
    w.hero = q;
    [w learnSkills];
}

//代理模式
+ (void)proxyPattern{
    SchoolGirl *girl = [SchoolGirl new];
    girl.name = @"小慕";
    Proxy *proxy = [[Proxy alloc] initWithSchoolGirl:girl];
    [proxy giveFlowers];
    [proxy giveDolls];
    [proxy giveChocolate];
}

//工厂模式
+ (void)factoryPattern{
    CalculateFactory *addFactory = [[CalculateAddFactory alloc] init];
    CalculatorOperation *addOperate = [addFactory createOperattion];
    double resultAdd = [addOperate getResultWithNumberA:10 numberB:2];
    
    CalculateFactory *subFactory = [[CalculateSubFactory alloc] init];
    CalculatorOperation *subOperate = [subFactory createOperattion];
    double resultSub = [subOperate getResultWithNumberA:10 numberB:2];
    
    NSLog(@"resultAdd = %f ; resultSub = %f",resultAdd,resultSub);
}

//原型模式
+ (void)prototypePattern{
    PrototypePerson *xiaomu1 = [[PrototypePerson alloc] init];
    xiaomu1.name = @"小慕";
    xiaomu1.age = 18;
    PrototypePerson *xiaomu2 = [xiaomu1 copy];
    NSLog(@"xiaomu1 = %@, xiaomu2 = %@",xiaomu1,xiaomu2);
}

//模板方法模式
+ (void)templateMethodPattern{
    NSLog(@"学生A试题答案：");
    TestPaper *paperA = [TestPaperA new];
    [paperA testQuestion1];
    [paperA testQuestion2];
    [paperA testQuestion3];
    
    NSLog(@"学生B试题答案：");
    TestPaper *paperB = [TestPaperB new];
    [paperB testQuestion1];
    [paperB testQuestion2];
    [paperB testQuestion3];
}

//外观模式
+ (void)facadePattern{
    Facade *facade = [[Facade alloc] init];
    [facade methodA];
    [facade methodB];
}

//建造者模式
+ (void)builderPattern{
    //builder
    ThinPersonBuilder *thinBuilder = [[ThinPersonBuilder alloc] init];
    //为builder创建director
    PersonBuilderDirector *thinDirector = [[PersonBuilderDirector alloc] initWithBuilder:thinBuilder];
    //director发出创建指令 builder负责具体创建组件 返回product
    GamePerson *thinPerson = [thinDirector builderPerson];
    
    FatPersonBuilder *fatBuilder = [[FatPersonBuilder alloc] init];
    PersonBuilderDirector *fatDirector = [[PersonBuilderDirector alloc] initWithBuilder:fatBuilder];
    GamePerson *fatPerson = [fatDirector builderPerson];
    
    NSLog(@"thinPerson = %@  fatPerson = %@",thinPerson,fatPerson);
}

+ (void)executeMethod:(SEL)sel desc:(NSString *)desc{
    NSLog(@"[******************%@******************开始]", desc);
    [ExampleManager performSelector:sel];
    NSLog(@"[******************%@******************结尾]\n ", desc);
}

@end
