//
//  Pursuit.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/2.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Pursuit.h"

@interface Pursuit()
@property (nonatomic, strong) SchoolGirl *schoolGirl;
@end

@implementation Pursuit

- (instancetype)initWithSchoolGirl:(SchoolGirl *)schoolGirl{
    self = [super init];
    if (self) {
        self.schoolGirl = schoolGirl;
    }
    return self;
}

- (void)giveChocolate{
    NSLog(@"%@送你巧克力%@",self.name,self.schoolGirl.name);
}
- (void)giveDolls{
    NSLog(@"%@送你洋娃娃%@",self.name,self.schoolGirl.name);
}
- (void)giveFlowers{
    NSLog(@"%@送你玫瑰花%@",self.name, self.schoolGirl.name);
}

@end
