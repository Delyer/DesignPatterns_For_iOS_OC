//
//  Expression.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Expression.h"

@implementation Expression

- (void)interpret:(PlayerContext *)context{
    
    if (context.playTextArray.count == 0) {
        return;
    }else{
        NSString *playKey = [context.playTextArray firstObject];
        [context.playTextArray removeObjectAtIndex:0];
        if (context.playTextArray.count >0) {
            NSString *playValue = [context.playTextArray firstObject];
            [self excute:playKey playValue:playValue];
            [context.playTextArray removeObjectAtIndex:0];
        }
    }
}

- (void)excute:(NSString *)playKey playValue:(NSString *)playValue{
    
}

@end
