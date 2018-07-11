//
//  Mediator.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Colleague;

@interface Mediator : NSObject

- (void)send:(NSString *)message colleague:(Colleague *)colleague;

@end
