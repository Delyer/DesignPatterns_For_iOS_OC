//
//  PersonBuilderDirector.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "PersonBuilderDirector.h"

@interface PersonBuilderDirector()
@property (nonatomic, strong) id<PersonBuilderProtocol> builder;
@end

@implementation PersonBuilderDirector
- (instancetype)initWithBuilder:(id<PersonBuilderProtocol>)builder{
    self = [super init];
    if (self) {
        _builder = builder;
    }
    return self;
}

- (GamePerson *)builderPerson{
    return [self.builder buildPerson];
}

@end
