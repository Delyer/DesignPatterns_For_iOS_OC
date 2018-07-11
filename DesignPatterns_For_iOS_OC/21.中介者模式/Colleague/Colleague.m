//
//  Colleague.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/11.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague

- (instancetype)initWithMediator:(Mediator *)mediator{
    self = [super init];
    if (self) {
        _mediator = mediator;
    }
    return self;
}
- (void)notify:(NSString *)message{

}
- (void)send:(NSString *)message{
    
}

@end
