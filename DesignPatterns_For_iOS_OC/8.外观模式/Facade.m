//
//  Facade.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/8.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Facade.h"

@interface Facade()
@property (nonatomic, strong) SubSystemOne *systemOne;
@property (nonatomic, strong) SubSystemTwo *systemTwo;
@property (nonatomic, strong) SubSystemThree *systemThree;
@end

@implementation Facade

- (instancetype)init{
    self = [super init];
    if (self) {
        _systemOne = [SubSystemOne new];
        _systemTwo = [SubSystemTwo new];
        _systemThree = [SubSystemThree new];
    }
    return self;
}

- (void)methodA{
    [self.systemOne handleSubSystemOneMethodA];
    [self.systemTwo handleSubSystemTwoMethodB];
    [self.systemThree handleSubSystemThreeMethodA];
}
- (void)methodB{
    [self.systemOne handleSubSystemOneMethodB];
    [self.systemTwo handleSubSystemTwoMethodA];
    [self.systemThree handleSubSystemThreeMethodA];
}

@end
