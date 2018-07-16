//
//  Scale.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Scale.h"

@implementation Scale

- (void)excute:(NSString *)playKey playValue:(NSString *)playValue{
    NSString *scale;
    if ([playValue isEqualToString:@"1"]) {
        scale = @"低音";
    } else if ([playValue isEqualToString:@"2"]) {
        scale = @"中音";
    } else if ([playValue isEqualToString:@"3"]) {
        scale = @"高音";
    }
    NSLog(@"%@ ",scale);
}

@end
