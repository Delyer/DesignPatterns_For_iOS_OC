//
//  Company.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Company : NSObject
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)companyName;
- (void)add:(Company *)company;//增加
- (void)remove:(Company *)company;//移除
- (void)display:(NSInteger)depth;//显示
- (void)lineOfDuty;//履行职责

@end
