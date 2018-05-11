//
//  AccessDepartment.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "AccessDepartment.h"
#import "SQLDepartment.h"

@implementation AccessDepartment

- (void)insertDepartment:(SQLDepartment *)department{
    NSLog(@"插入一个Access的SqlserverDepartment对象");
}

- (SQLDepartment *)getDepartment{
    NSLog(@"新建一个Access的SqlserverDepartment对象");
    return [[SQLDepartment alloc] init];
}

@end
