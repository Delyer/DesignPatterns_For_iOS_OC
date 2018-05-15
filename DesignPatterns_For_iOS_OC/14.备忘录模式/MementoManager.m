//
//  MementoManager.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/15.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "MementoManager.h"

@interface MementoManager()
@property (nonatomic, strong) Memento *memento;
@end

@implementation MementoManager

- (instancetype)initWithGameState:(Memento *)memento{
    self = [super init];
    if (self) {
        _memento = memento;
    }
    return self;
}

- (Memento *)getMemento{
    return self.memento;
}

@end
