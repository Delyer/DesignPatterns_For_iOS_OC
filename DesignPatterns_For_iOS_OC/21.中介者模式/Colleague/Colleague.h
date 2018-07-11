//
//  Colleague.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Mediator;

@interface Colleague : NSObject
@property (nonatomic, strong) Mediator *mediator;

- (instancetype)initWithMediator:(Mediator *)mediator;
- (void)notify:(NSString *)message;
- (void)send:(NSString *)message;

@end
