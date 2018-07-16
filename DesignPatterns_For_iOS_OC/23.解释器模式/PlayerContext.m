//
//  PlayerContext.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/16.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "PlayerContext.h"

@implementation PlayerContext

- (NSMutableArray *)playTextArray{
    if (!_playTextArray) {
        _playTextArray = [NSMutableArray array];
    }
    return _playTextArray;
}

@end
