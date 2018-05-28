//
//  Request.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/28.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Request : NSObject
@property (nonatomic, strong) NSString *requestType;
@property (nonatomic, strong) NSString *requestContent;
@property (nonatomic, assign) NSInteger number;

@end
