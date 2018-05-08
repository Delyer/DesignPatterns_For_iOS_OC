//
//  CashStrategyRebate.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/25.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "CashStrategyRebate.h"

@interface CashStrategyRebate()
@property (nonatomic, assign) CGFloat rebate;//折扣
@end

@implementation CashStrategyRebate

- (instancetype)initWithRebate:(CGFloat)rebate{
    self = [super init];
    if (self) {
        _rebate = rebate;
    }
    return self;
}

- (CGFloat)realAcceptCash:(CGFloat)cash{
    return self.rebate *cash;
}

@end
