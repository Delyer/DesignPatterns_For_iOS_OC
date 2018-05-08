//
//  PrototypePerson.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/8.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "PrototypePerson.h"

@implementation PrototypePerson

- (id)copyWithZone:(NSZone *)zone {
    PrototypePerson *p = [[[self class] allocWithZone:zone] init];
    p.name = self.name;
    p.age = self.age;
    return p;
}
@end
