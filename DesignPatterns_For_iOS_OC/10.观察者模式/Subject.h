//
//  Subject.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/10.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserveProtocol.h"

//抽象通知者 
@interface Subject : NSObject

- (void)attach:(id<ObserveProtocol>)observer;
- (void)detach:(id<ObserveProtocol>)observer;
- (void)notify;
- (NSMutableArray *)getObserverList;

@end
