//
//  Skills.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Skills.h"

@implementation Skills

- (void)learnSkills{
    if (self.hero) {
        [self.hero learnSkills];
    }
}
@end
