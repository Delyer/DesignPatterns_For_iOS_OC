//
//  CashStrategyReturn.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/25.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "CashStrategyReturn.h"

@interface CashStrategyReturn()
@property (nonatomic, assign) CGFloat conditionMoney;
@property (nonatomic, assign) CGFloat returnMoney;
@end

@implementation CashStrategyReturn

- (instancetype)initWithConditionMoney:(CGFloat)conditionMoney returnMoney:(CGFloat)returnMoney{
    self = [super init];
    if (self) {
        _conditionMoney = conditionMoney;
        _returnMoney = returnMoney;
    }
    return self;
}

- (CGFloat)realAcceptCash:(CGFloat)cash{
    if (cash >= self.conditionMoney) {
        return cash - self.returnMoney;
    }
    return cash;
}


@end
