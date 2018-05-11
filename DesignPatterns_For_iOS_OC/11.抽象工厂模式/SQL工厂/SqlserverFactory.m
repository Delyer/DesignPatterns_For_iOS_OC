//
//  SqlserverFactory.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "SqlserverFactory.h"
#import "SqlserverUser.h"
#import "SqlserverDepartment.h"

@implementation SqlserverFactory

- (id<UserOperationProtocol>)createUser{
    return [[SqlserverUser alloc] init];
}
- (id<DepartmentOperationProtocol>)createDepartment{
    return [[SqlserverDepartment alloc] init];
}

@end
