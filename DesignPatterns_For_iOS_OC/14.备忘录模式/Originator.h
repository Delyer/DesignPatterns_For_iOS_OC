//
//  Originator.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/15.
//  Copyright © 2018年 meituan. All rights reserved.
//

//发起人
#import <Foundation/Foundation.h>
#import "Memento.h"

@interface Originator : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSString *state;

- (void)showOriginator;
- (void)modifyOriginator;

//创建备忘录
- (Memento *)createMemento;
//恢复备忘录状态
- (void)rebackMementoWithMemento:(Memento *)memento;

@end
