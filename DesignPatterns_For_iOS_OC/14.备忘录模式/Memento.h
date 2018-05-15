//
//  Memento.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/15.
//  Copyright © 2018年 meituan. All rights reserved.
//

//备忘录
#import <Foundation/Foundation.h>

@interface Memento : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSString *state;

@end
