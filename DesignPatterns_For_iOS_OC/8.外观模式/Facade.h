//
//  Facade.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/8.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubSystemOne.h"
#import "SubSystemTwo.h"
#import "SubSystemThree.h"

//外观类 需要了解所有子系统的方法和属性，进行组合，以备外界调用
@interface Facade : NSObject
- (void)methodA;
- (void)methodB;

@end
