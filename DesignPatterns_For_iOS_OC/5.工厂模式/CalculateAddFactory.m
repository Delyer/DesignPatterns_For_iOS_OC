//
//  CalculateAddFactory.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/3.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "CalculateAddFactory.h"

@implementation CalculateAddFactory
- (CalculatorOperation *)createOperattion{
    return [[CalculatorAdd alloc] init];
}

@end
