//
//  AnQiLa.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "AnQiLa.h"

@interface AnQiLa()
@property (nonatomic, strong) NSString *userName;
@end

@implementation AnQiLa
- (instancetype)initWithName:(NSString *)userName{
    self = [super init];
    if (self) {
        self.userName = userName;
    }
    return self;
}
- (void)learnSkills{
    NSLog(@"%@(使用英雄：安琪拉)学习了以上技能",self.userName);
}

@end
