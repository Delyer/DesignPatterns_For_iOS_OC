//
//  Proxy.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/2.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Proxy.h"

@interface Proxy ()
@property (nonatomic, strong) Pursuit *pursuit;
@end

@implementation Proxy
- (instancetype)initWithSchoolGirl:(SchoolGirl *)schoolGirl {
    self = [super init];
    if (self) {
        self.pursuit = [[Pursuit alloc] initWithSchoolGirl:schoolGirl];
        self.pursuit.name = @"dely";
    }
    return self;
}

- (void)giveDolls {
    [self.pursuit giveDolls];
}

- (void)giveFlowers {
    [self.pursuit giveFlowers];
}

- (void)giveChocolate {
    [self.pursuit giveChocolate];
}

@end
