//
//  HeroManager.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "HeroManager.h"

@implementation HeroManager

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static HeroManager *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[HeroManager alloc] init];
    });
    return instance;
}

- (void)getHeroInfo{
    NSLog(@"name = %@; leve = %ld",self.name,self.leve);
}


@end
