//
//  ConcreteWebSite.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/13.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "ConcreteWebSite.h"

@interface ConcreteWebSite()
@property (nonatomic, strong) FlyweightUser *user;
@property (nonatomic, strong) NSString *nameKey;
@end

@implementation ConcreteWebSite

- (instancetype)initWithWebSiteName:(NSString *)nameKey{
    self = [super init];
    if (self) {
        _nameKey = nameKey;
    }
    return self;
}

- (void)use:(FlyweightUser *)user{
    self.user = user;
    NSLog(@"网站分类：%@ 用户：%@",self.nameKey,self.user.name);
}

@end
