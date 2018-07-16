//
//  Expression.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

//解释器
#import <Foundation/Foundation.h>
#import "PlayerContext.h"

@interface Expression : NSObject
- (void)interpret:(PlayerContext *)context;

- (void)excute:(NSString *)playKey playValue:(NSString *)playValue;

@end
