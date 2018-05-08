//
//  Finery.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Person.h"
//decorator 服饰类
@interface Finery : Person
//装饰对象需要装饰的原始对象
@property(nonatomic, strong) Person *person;

@end
