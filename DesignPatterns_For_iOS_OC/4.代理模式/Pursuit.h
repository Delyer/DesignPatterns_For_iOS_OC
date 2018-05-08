//
//  Pursuit.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/2.
//  Copyright © 2018年 meituan. All rights reserved.
//

//真实追求者
#import <Foundation/Foundation.h>
#import "GiveGiftDelegate.h"
#import "SchoolGirl.h"

@interface Pursuit : NSObject<GiveGiftDelegate>
@property (nonatomic, strong) NSString *name;
- (instancetype)initWithSchoolGirl:(SchoolGirl *)schoolGirl;
@end
