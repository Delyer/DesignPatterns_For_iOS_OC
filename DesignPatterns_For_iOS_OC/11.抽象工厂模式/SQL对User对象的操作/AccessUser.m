//
//  AccessUser.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "AccessUser.h"

@implementation AccessUser

- (void)insertUser:(SQLUser *)user{
    NSLog(@"插入一个Access的SQLUser对象");
}

- (SQLUser *)getUser{
    NSLog(@"新建一个Access的SQLUser对象");
    return [[SQLUser alloc]init];
}

@end
