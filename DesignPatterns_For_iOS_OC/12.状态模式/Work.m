//
//  Work.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Work.h"
#import "WorkState.h"
#import "ForenoonState.h"

@interface Work()
@property (nonatomic, strong) id<WorkState> state;
@end

@implementation Work

- (instancetype)init{
    self = [super init];
    if (self) {
        self.state = [[ForenoonState alloc] init];
    }
    return self;
}

- (void)wtiteProgram{
    [self.state writeProgramWithWork:self];
}

- (void)setWorkState:(id<WorkState>)state{
    self.state = state;
}

@end
