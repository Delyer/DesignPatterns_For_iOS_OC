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

#import "ConcreteSubject.h"
#import "StockObserver.h"
#import "NBAObserver.h"

#import "SqlserverFactory.h"
#import "AccessFactory.h"
#import "SQLUser.h"
#import "SQLDepartment.h"

#import "WorkState.h"
#import "Work.h"

#import "AduioPlayer.h"

#import "Originator.h"
#import "MementoManager.h"

#import "Company.h"
#import "HRDepartment.h"
#import "FinanceDepartment.h"

#import "ConcreteIterator.h"

#import "HeroManager.h"

#import "HandsetMBrand.h"
#import "HandsetNBrand.h"
#import "HandsetGame.h"
#import "HandsetAddressList.h"

#import "BakeMuttonCommand.h"
#import "BakeChickenWingCommand.h"
#import "Waiter.h"
#import "Barbecuer.h"

#import "CommonManager.h"
#import "MajordomoManager.h"
#import "GeneralManager.h"

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

//观察者模式
+ (void)observerPattern{
    //1.通知者
    Subject *subject = [[ConcreteSubject alloc] init];
    //观察者
    NBAObserver *nbaObserver = [[NBAObserver alloc] init];
    StockObserver *stockObserver = [[StockObserver alloc] init];
    [subject attach:nbaObserver];
    [subject attach:stockObserver];
    //通知
    [subject notify];
}

//抽象工厂模式
+ (void)abstractFactoryPattern{
    
    id<AbstractFactoryProtocol> factory = [[SqlserverFactory alloc]init];
    id<DepartmentOperationProtocol> department = [factory createDepartment];
    [department insertDepartment:[[SQLDepartment alloc]init]];
    [department getDepartment];
    
    id<AbstractFactoryProtocol> factory1 = [[AccessFactory alloc]init];
    id<UserOperationProtocol> user = [factory1 createUser];
    [user insertUser:[[SQLUser alloc]init]];
    [user getUser];
}

//状态模式
+ (void)statePattern{
    Work *work = [[Work alloc] init];
    work.hour = 9;
    [work wtiteProgram];
    work.hour = 12;
    [work wtiteProgram];
    work.hour = 15;
    [work wtiteProgram];
    work.hour = 17;
    [work wtiteProgram];
    work.hour = 18;
    [work wtiteProgram];
    work.hour = 22;
    [work wtiteProgram];
}

//适配器模式
+ (void)adapterPattern{
    AduioPlayer *player = [[AduioPlayer alloc] init];
    [player playWithAudioType:AudioTypeVlc fileName:@"far way.vlc"];
    [player playWithAudioType:AudioTypeMp3 fileName:@"ten year.mp3"];
    [player playWithAudioType:AudioTypeMp4 fileName:@"hero.mp4"];
    [player playWithAudioType:AudioTypeInvaild fileName:@"never.aa"];
}

//备忘录模式
+ (void)mementoPattern{
    //发起者
    Originator *originator = [[Originator alloc] init];
    [originator showOriginator];
    
    //备忘录
    Memento *memnto = [originator createMemento];
    MementoManager *manager = [[MementoManager alloc] initWithGameState:memnto];
    
    //修改
    [originator modifyOriginator];
    [originator showOriginator];
    
    //从备忘录复原
    [originator rebackMementoWithMemento:[manager getMemento]];
    [originator showOriginator];
}

//组合模式
+ (void)compositPattern{
    Company *root = [[Company alloc] initWithName:@"北京总公司"];
    [root add:[[HRDepartment alloc] initWithName:@"总公司人力资源部"]];
    [root add:[[FinanceDepartment alloc] initWithName:@"总公司财务部"]];
    
    Company *comp = [[Company alloc] initWithName:@"上海华东分公司"];
    [comp add:[[HRDepartment alloc] initWithName:@"华东分公司人力资源部"]];
    [comp add:[[FinanceDepartment alloc] initWithName:@"华东分公司财务部"]];
    [root add:comp];
    
    Company *comp1 = [[Company alloc] initWithName:@"南京办事处"];
    [comp1 add:[[HRDepartment alloc] initWithName:@"南京办事处人力资源部"]];
    [comp1 add:[[FinanceDepartment alloc] initWithName:@"南京办事处财务部"]];
    [comp add:comp1];
    
    Company *comp2 = [[Company alloc] initWithName:@"杭州办事处"];
    [comp2 add:[[HRDepartment alloc] initWithName:@"杭州办事处人力资源部"]];
    [comp2 add:[[FinanceDepartment alloc] initWithName:@"杭州办事处财务部"]];
    [comp add:comp2];
    
    NSLog(@"总公司结构图：");
    [root display:1];
    
    NSLog(@"总公司职责：");
    [root lineOfDuty];
}

//迭代器模式
+ (void)iteratorPattern{
    //oc中的forin就是完美的使用迭代器模式来封装，forin内部具体实现可能是下面的流程：
    
    //聚集对象
    NSArray *array = @[@"大鸟",@"小菜",@"行李",@"老外",@"小偷"];
    
    //1.创建迭代器
    Iterator *i = [[ConcreteIterator alloc] initWithArray:array];
    //2.遍历迭代器
    while (![i isDone]) {
        NSLog(@"%@ 请买车票",[i currentItem]);
        [i next];
    }
}

//单例模式
+ (void)singletonPattern{
    //外部统一创建对象接口
    HeroManager *manager = [HeroManager sharedInstance];
    
    manager.name = @"Dely";
    manager.leve = 26;
    [manager getHeroInfo];
    
    HeroManager *manager1 = [HeroManager sharedInstance];
    NSLog(@"manager = %p; manager1 = %p 两个指针指向的对象地址相同(同一个对象，有且只有一个)",manager,manager1);
}

//桥接模式
+ (void)bridgePattern{
    //手机软件和手机品牌是部分和整体关系(合成/聚合)，不是继承关系
    
    HandsetMBrand *mbrand = [[HandsetMBrand alloc] init];
    [mbrand setHandsetSoft:[HandsetGame new]];
    [mbrand runSoft];
    [mbrand setHandsetSoft:[HandsetAddressList new]];
    [mbrand runSoft];
    
    HandsetNBrand *nbrand = [[HandsetNBrand alloc] init];
    [nbrand setHandsetSoft:[HandsetGame new]];
    [nbrand runSoft];
    [nbrand setHandsetSoft:[HandsetAddressList new]];
    [nbrand runSoft];
}

//命令模式
+ (void)commandPattern{
    //开店装备
    Barbecuer *boy = [[Barbecuer alloc] init];
    Waiter *girl = [Waiter new];
    
    //开门营业 顾客点菜
    Command *bakeMuttonCommand = [[BakeMuttonCommand alloc] initWithBarbecuer:boy];
    [girl setOrder:bakeMuttonCommand];
    Command *bakeMuttonCommand1 = [[BakeMuttonCommand alloc] initWithBarbecuer:boy];
    [girl setOrder:bakeMuttonCommand1];
    Command *bakeChickenWingCommand = [[BakeChickenWingCommand alloc] initWithBarbecuer:boy];
    [girl setOrder:bakeChickenWingCommand];
    
    //点菜完毕，通知厨房
    [girl notifyExcuteAllCommand];
}

//职责链模式
+ (void)chainOfResponsibiltityPattern{
    //设置职责链
    CommonManager *jingli = [[CommonManager alloc] initWithName:@"经理"];
    MajordomoManager *zhongjian = [[MajordomoManager alloc] initWithName:@"总监"];
    GeneralManager *zongjingli = [[GeneralManager alloc] initWithName:@"总经理"];
    [jingli setSuperior:zhongjian];
    [zhongjian setSuperior:zongjingli];
    
    //请求
    Request *request = [Request new];
    request.requestType = @"请假";
    request.requestContent = @"xiaomu请假";
    request.number = 5;
    
    //处理请求
    [jingli requestApplictions:request];
    
    Request *request1 = [Request new];
    request1.requestType = @"加薪";
    request1.requestContent = @"xiaomu请求加薪";
    request1.number = 500;
    [jingli requestApplictions:request1];
    
    Request *request2 = [Request new];
    request2.requestType = @"加薪";
    request2.requestContent = @"xiaomu请求加薪";
    request2.number = 5000;
    [jingli requestApplictions:request2];
}

+ (void)executeMethod:(SEL)sel desc:(NSString *)desc{
    NSLog(@"[******************%@******************开始]", desc);
    [ExampleManager performSelector:sel];
    NSLog(@"[******************%@******************结尾]\n ", desc);
}

@end
