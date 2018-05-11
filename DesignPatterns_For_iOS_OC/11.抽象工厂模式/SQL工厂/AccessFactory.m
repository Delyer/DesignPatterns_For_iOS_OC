//
//  AccessFactory.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "AccessFactory.h"
#import "AccessUser.h"
#import "AccessDepartment.h"

@implementation AccessFactory

- (id<UserOperationProtocol>)createUser{
    return [[AccessUser alloc] init];
}
- (id<DepartmentOperationProtocol>)createDepartment{
    return [[AccessDepartment alloc] init];
}

@end
