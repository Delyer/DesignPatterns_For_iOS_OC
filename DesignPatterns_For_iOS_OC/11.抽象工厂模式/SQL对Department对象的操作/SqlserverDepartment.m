//
//  SqlserverDepartment.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "SqlserverDepartment.h"
#import "SQLDepartment.h"

@implementation SqlserverDepartment

- (void)insertDepartment:(SQLDepartment *)department{
    NSLog(@"插入一个Server的SqlserverDepartment对象");
}

- (SQLDepartment *)getDepartment{
    NSLog(@"新建一个Server的SqlserverDepartment对象");
    return [[SQLDepartment alloc] init];
}

@end
