//
//  CalculatorAlgorithm.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "CalculatorAlgorithm.h"

@implementation CalculatorAdd

//加
- (double)getResultWithNumberA:(double)numberA numberB:(double)numberB{
    return numberA + numberB;
}
@end

//减
@implementation CalculatorSub

- (double)getResultWithNumberA:(double)numberA numberB:(double)numberB{
    return numberA - numberB;
}
@end

//乘
@implementation CalculatorMul

- (double)getResultWithNumberA:(double)numberA numberB:(double)numberB{
    return numberA * numberB;
}
@end

//除
@implementation CalculatorDiv

- (double)getResultWithNumberA:(double)numberA numberB:(double)numberB{
    if (numberB == 0) {
        assert(numberB);
    }
    return numberA / numberB;
}
@end
