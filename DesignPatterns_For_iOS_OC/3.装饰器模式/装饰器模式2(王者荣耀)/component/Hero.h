//
//  Hero.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/28.
//  Copyright © 2018年 meituan. All rights reserved.
//
//王者荣耀英雄学技能,每次英雄升级都会附加一个额外技能点学习技能。具体的英雄就是ConcreteComponent，技能栏就是装饰器Decorator，每个技能就是ConcreteDecorator；
//component
#import <Foundation/Foundation.h>

@interface Hero : NSObject
- (void)learnSkills;
@end
