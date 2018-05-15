//
//  Originator.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/15.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Originator.h"

@implementation Originator

- (instancetype)init{
    self = [super init];
    if (self) {
        self.name = @"Dely";
        self.state = @"bad";
        self.age = 26;
    }
    return self;
}

- (void)showOriginator{
    NSLog(@"name = %@; state = %@; age = %ld",self.name,self.state,self.age);
}
- (void)modifyOriginator{
    self.name = @"xiaomu";
    self.state = @"good";
    self.age = 18;
}

//创建备忘录
- (Memento *)createMemento{
    Memento *memento = [[Memento alloc] init];
    memento.name = self.name;
    memento.state = self.state;
    memento.age = self.age;
    return memento;
}

- (void)rebackMementoWithMemento:(Memento *)memento{
    self.name = memento.name;
    self.state = memento.state;
    self.age = memento.age;
}

@end
