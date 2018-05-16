//
//  Iterator.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

//oc中的forin就是完美的使用迭代器模式来封装

//迭代器抽象类
#import <Foundation/Foundation.h>

@interface Iterator : NSObject

- (id)first;
- (id)next;
- (BOOL)isDone;
- (id)currentItem;

@end
