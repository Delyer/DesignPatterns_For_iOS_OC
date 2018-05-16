//
//  ConcreteIterator.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

//具体迭代器类
#import "Iterator.h"

@interface ConcreteIterator : Iterator
- (instancetype)initWithArray:(NSArray *)array;
@end
