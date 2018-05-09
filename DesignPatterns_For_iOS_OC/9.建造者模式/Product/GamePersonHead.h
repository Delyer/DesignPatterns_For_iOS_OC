//
//  GamePersonHead.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

//头部 - 产品的具体组件部分   
#import <Foundation/Foundation.h>

@interface GamePersonHead : NSObject
//对完公开创建组件的方法
- (instancetype)initWithName:(NSString *)name;

@end
