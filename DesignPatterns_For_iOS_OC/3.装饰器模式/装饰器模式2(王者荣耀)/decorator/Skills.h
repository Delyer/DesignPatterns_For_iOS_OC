//
//  Skills.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Hero.h"

//Decorator 技能栏
@interface Skills : Hero
@property (nonatomic, strong) Hero *hero;
@end
