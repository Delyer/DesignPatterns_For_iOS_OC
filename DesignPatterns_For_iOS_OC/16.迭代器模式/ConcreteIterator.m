//
//  ConcreteIterator.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "ConcreteIterator.h"

@interface ConcreteIterator()
@property (nonatomic, strong) NSArray *array;
@property (nonatomic, assign) NSInteger current;
@end

@implementation ConcreteIterator

- (instancetype)initWithArray:(NSArray *)array{
    self = [super init];
    if (self) {
        _array = array;
        _current = 0;
    }
    return self;
}

- (id)first{
    return [self.array firstObject];
}
- (id)next{
    id ret = nil;
    self.current ++;
    if (self.current < self.array.count) {
        ret = self.array[self.current];
    }
    return ret;
}
- (BOOL)isDone{
    return self.current >= self.array.count?YES:NO;
}
- (id)currentItem{
    return self.array[self.current];
}


@end
