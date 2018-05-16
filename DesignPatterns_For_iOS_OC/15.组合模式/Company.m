//
//  Company.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Company.h"

@interface Company()
@property (nonatomic, strong) NSMutableArray <Company *>*children;
@end

@implementation Company
- (instancetype)initWithName:(NSString *)companyName{
    self = [super init];
    if (self) {
        _name = companyName;
        _children = [NSMutableArray array];
    }
    return self;
}
- (void)add:(Company *)company{
    [self.children addObject:company];
}
- (void)remove:(Company *)company{
    [self.children removeObject:company];
}
- (void)display:(NSInteger)depth{
    NSMutableString *depthStr = [NSMutableString string];
    for (NSInteger i = 0; i<depth; i++) {
        [depthStr appendFormat:@"="];
    }
    NSLog(@"%@%@",depthStr,self.name);
    for (Company *company in self.children) {
        [company display:depth+4];
    }
}
- (void)lineOfDuty{
    for (Company *company in self.children) {
        [company lineOfDuty];
    }
}

@end
