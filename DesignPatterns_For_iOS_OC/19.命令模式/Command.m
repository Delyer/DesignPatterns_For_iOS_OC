//
//  Command.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Command.h"

@implementation Command

- (instancetype)initWithBarbecuer:(Barbecuer *)barbecuer{
    self = [super init];
    if (self) {
        _barbecuer = barbecuer;
    }
    return self;
}
- (void)excuteCommand{
    
}

- (NSString *)commandString{
    return nil;
}

@end
