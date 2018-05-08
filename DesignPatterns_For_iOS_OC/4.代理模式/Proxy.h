//
//  Proxy.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/2.
//  Copyright © 2018年 meituan. All rights reserved.
//

//代理
#import <Foundation/Foundation.h>
#import "GiveGiftDelegate.h"
#import "SchoolGirl.h"
#import "Pursuit.h"

@interface Proxy : NSObject<GiveGiftDelegate>
- (instancetype)initWithSchoolGirl:(SchoolGirl *)schoolGirl;
@end
