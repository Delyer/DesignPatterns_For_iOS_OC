//
//  VPerson.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Action;

@interface VPerson : NSObject

- (void)accept:(Action *)visitor;
@end
