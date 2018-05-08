//
//  CalculateFactory.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/3.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorOperation.h"
#import "CalculatorAlgorithm.h"

@interface CalculateFactory : NSObject
- (CalculatorOperation *)createOperattion;
@end

