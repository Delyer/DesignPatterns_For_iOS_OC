//
//  FinanceDepartment.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "FinanceDepartment.h"

@implementation FinanceDepartment

- (void)add:(Company *)company{
    
}
- (void)remove:(Company *)company{
    
}
- (void)display:(NSInteger)depth{
    NSMutableString *depthStr = [NSMutableString string];
    for (NSInteger i = 0; i<depth; i++) {
        [depthStr appendFormat:@"="];
    }
    NSLog(@"%@%@",depthStr,self.name);
}
- (void)lineOfDuty{
    NSLog(@"%@  公司的财务收支管理",self.name);
}

@end
