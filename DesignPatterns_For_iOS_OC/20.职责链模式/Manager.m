//
//  Manager.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)setSuperior:(Manager *)superior{
    _superior = superior;
}
- (void)requestApplictions:(Request *)request{
    
}

@end
