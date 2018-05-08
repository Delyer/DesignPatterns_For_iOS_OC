//
//  PrototypePerson.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/8.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrototypePerson : NSObject<NSCopying>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@end
