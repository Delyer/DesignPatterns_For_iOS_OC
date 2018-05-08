//
//  CalculateDivFactory.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/3.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "CalculateDivFactory.h"

@implementation CalculateDivFactory
- (CalculatorOperation *)createOperattion{
    return [[CalculatorDiv alloc] init];
}
@end
