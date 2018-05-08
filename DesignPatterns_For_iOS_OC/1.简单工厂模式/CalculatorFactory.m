//
//  CalculatorFactory.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "CalculatorFactory.h"

@implementation CalculatorFactory

+ (CalculatorOperation *)initWithType:(CalculatorType)type{
    
    CalculatorOperation *operation;
    switch (type) {
        case CalculatorTypeAdd:{
            operation = [[CalculatorAdd alloc] init];
            break;
        }
        case CalculatorTypeSub:{
            operation = [[CalculatorSub alloc] init];
            break;
        }
        case CalculatorTypeMul:{
            operation = [[CalculatorMul alloc] init];
            break;
        }
        case CalculatorTypeDiv:{
            operation = [[CalculatorDiv alloc] init];
            break;
        }
        default:
            break;
    }
    return operation;
}

@end
