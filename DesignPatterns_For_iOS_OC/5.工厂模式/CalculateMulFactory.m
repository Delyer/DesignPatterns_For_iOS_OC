//
//  CalculateMulFactory.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/3.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "CalculateMulFactory.h"

@implementation CalculateMulFactory
- (CalculatorOperation *)createOperattion{
    return [[CalculatorMul alloc] init];
}
@end
