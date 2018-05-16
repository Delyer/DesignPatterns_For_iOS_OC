//
//  HeroManager.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HeroManager : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger leve;
//外部统一创建对象方法
+ (instancetype)sharedInstance;

- (void)getHeroInfo;

@end
