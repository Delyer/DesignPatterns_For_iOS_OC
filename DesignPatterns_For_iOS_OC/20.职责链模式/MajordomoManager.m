//
//  MajordomoManager.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "MajordomoManager.h"

@implementation MajordomoManager

- (void)requestApplictions:(Request *)request{
    if ([request.requestType isEqualToString:@"请假"] && request.number <= 5) {
        NSLog(@"%@ %@ %ld 被%@批准",request.requestType, request.requestContent,request.number,self.name);
    }else if (self.superior){
        [self.superior requestApplictions:request];
    }
}

@end
