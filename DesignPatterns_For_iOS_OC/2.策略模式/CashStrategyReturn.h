//
//  CashStrategyReturn.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/25.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashStrategy.h"

//满减
@interface CashStrategyReturn : NSObject<CashStrategy>
- (instancetype)initWithConditionMoney:(CGFloat)conditionMoney returnMoney:(CGFloat)returnMoney;

@end
