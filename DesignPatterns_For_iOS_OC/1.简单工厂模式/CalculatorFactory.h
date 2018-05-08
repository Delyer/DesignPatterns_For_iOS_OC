//
//  CalculatorFactory.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorAlgorithm.h"

typedef NS_ENUM(NSInteger, CalculatorType){
    CalculatorTypeAdd = 1,
    CalculatorTypeSub,
    CalculatorTypeMul,
    CalculatorTypeDiv
};

@interface CalculatorFactory : NSObject

+ (CalculatorOperation *)initWithType:(CalculatorType)type;

@end
