//
//  GeneralManager.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "GeneralManager.h"

@implementation GeneralManager
- (void)requestApplictions:(Request *)request{
    if ([request.requestType isEqualToString:@"请假"]) {
        NSLog(@"%@ %@ %ld 被%@批准",request.requestType, request.requestContent,request.number,self.name);
    }else if ([request.requestType isEqualToString:@"加薪"] && request.number <= 500){
        NSLog(@"%@ %@ %ld 被%@批准",request.requestType, request.requestContent,request.number,self.name);
    }else if ([request.requestType isEqualToString:@"加薪"] && request.number > 500){
        NSLog(@"%@ %@ %ld 再说吧",request.requestType, request.requestContent,request.number);
    }
}

@end
