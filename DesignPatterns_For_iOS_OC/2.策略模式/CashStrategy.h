//
//  CashStrategy.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/4/25.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CashStrategy <NSObject>
@optional
- (CGFloat)realAcceptCash:(CGFloat)cash;
@end
