//
//  MementoManager.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/15.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"

@interface MementoManager : NSObject
- (instancetype)initWithGameState:(Memento *)memento;
- (Memento *)getMemento;
@end
