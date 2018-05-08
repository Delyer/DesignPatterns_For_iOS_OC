//
//  CashContextFactory.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/25.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "CashContextFactory.h"
#import "CashStrategyNormal.h"
#import "CashStrategyRebate.h"
#import "CashStrategyReturn.h"

@interface CashContextFactory()
@property(nonatomic, strong) id<CashStrategy> cashSuper;
@end

@implementation CashContextFactory

- (instancetype)initWithCashStrategyType:(CashStrategyType)cashStrategyType{
    self = [super init];
    if (self) {
        switch (cashStrategyType) {
            case CashStrategyTypeNormal:{
                _cashSuper = [[CashStrategyNormal alloc] init];
                break;
            }
            case CashStrategyTypeRebate:{
                _cashSuper = [[CashStrategyRebate alloc] initWithRebate:0.8];
                break;
            }
            case CashStrategyTypeReturn:{
                _cashSuper = [[CashStrategyReturn alloc] initWithConditionMoney:100 returnMoney:5];
                break;
            }
            default:
                break;
        }
    }
    return self;
}
- (instancetype)initWithCashSuper:(id<CashStrategy>)cashSuper{
    self = [super init];
    if (self) {
        _cashSuper = cashSuper;
    }
    return self;
}

- (CGFloat)getRealShouldAcceptMoney:(CGFloat)totalMoney{
   return [self.cashSuper realAcceptCash:totalMoney];
}

@end
