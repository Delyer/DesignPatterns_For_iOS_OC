//
//  CashContextFactory.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/25.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashStrategy.h"

typedef NS_ENUM(NSInteger, CashStrategyType) {
    CashStrategyTypeNormal = 0,
    CashStrategyTypeRebate,
    CashStrategyTypeReturn
};

@interface CashContextFactory : NSObject
- (instancetype)initWithCashStrategyType:(CashStrategyType)cashStrategyType;
- (instancetype)initWithCashSuper:(id<CashStrategy>)cashSuper;
- (CGFloat)getRealShouldAcceptMoney:(CGFloat)totalMoney;

@end
