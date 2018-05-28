//
//  Manager.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

//抽象管理类
#import <Foundation/Foundation.h>
#import "Request.h"

@interface Manager : NSObject
@property (nonatomic, strong) Request *request;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Manager *superior;

- (instancetype)initWithName:(NSString *)name;
- (void)setSuperior:(Manager *)superior;
- (void)requestApplictions:(Request *)request;

@end
