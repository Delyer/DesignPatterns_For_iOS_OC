//
//  Note.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Note.h"

@implementation Note

- (void)excute:(NSString *)playKey playValue:(NSString *)playValue{
    NSString *note;
    if ([playKey isEqualToString:@"C"]) {
        note = @"1";
    } else if ([playKey isEqualToString:@"D"]) {
        note = @"2";
    } else if ([playKey isEqualToString:@"E"]) {
        note = @"3";
    } else if ([playKey isEqualToString:@"F"]) {
        note = @"4";
    } else if ([playKey isEqualToString:@"G"]) {
        note = @"5";
    } else if ([playKey isEqualToString:@"A"]) {
        note = @"6";
    } else if ([playKey isEqualToString:@"B"]) {
        note = @"7";
    }
    
    NSLog(@"%@ ",note);
}

@end
