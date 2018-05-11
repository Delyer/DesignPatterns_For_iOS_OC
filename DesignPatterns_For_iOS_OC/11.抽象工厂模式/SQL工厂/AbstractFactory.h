//
//  AbstractFactory.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserOperation.h"
#import "DepartmentOperation.h"

@protocol AbstractFactoryProtocol <NSObject>
@optional
- (id<UserOperationProtocol>)createUser;
- (id<DepartmentOperationProtocol>)createDepartment;

@end

