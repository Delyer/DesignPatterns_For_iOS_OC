//
//  ConcreteMediator.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Mediator.h"

@interface ConcreteMediator : Mediator
@property (nonatomic, strong) Colleague *colleague1;
@property (nonatomic, strong) Colleague *colleague2;

@end
