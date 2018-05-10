//
//  Subject.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/10.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "Subject.h"

@interface Subject ()
@property(nonatomic,readwrite,strong)NSMutableArray *observerList;
@end


@implementation Subject
- (instancetype)init{
    self = [super init];
    if (self) {
        _observerList = [NSMutableArray array];
    }
    return self;
}

- (void)attach:(id<ObserveProtocol>)observer{
    [self.observerList addObject:observer];
}
- (void)detach:(id<ObserveProtocol>)observer{
    for (id<ObserveProtocol> currentObserver in [self getObserverList]) {
        if (currentObserver == observer) {
            [self.observerList removeObject:observer];
        }
    }
}
- (NSMutableArray *)getObserverList{
    return self.observerList;
}
- (void)notify{
    
}
@end
