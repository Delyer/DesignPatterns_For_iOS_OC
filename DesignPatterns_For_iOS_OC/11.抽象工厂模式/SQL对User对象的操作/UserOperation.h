//
//  UserOperation.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SQLUser.h"

@protocol UserOperationProtocol <NSObject>
- (void)insertUser:(SQLUser *)user;
- (SQLUser *)getUser;

@end
