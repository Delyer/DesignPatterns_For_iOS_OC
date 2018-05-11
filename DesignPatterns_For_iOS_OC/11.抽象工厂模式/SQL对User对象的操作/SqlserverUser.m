//
//  SqlserverUser.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "SqlserverUser.h"
#import "SQLUser.h"

@implementation SqlserverUser

- (void)insertUser:(SQLUser *)user{
    NSLog(@"插入一个Sqlserver的SQLUser对象");
}

- (SQLUser *)getUser{
    NSLog(@"新建一个Sqlserver的SQLUser对象");
    return [[SQLUser alloc]init];
}

@end
