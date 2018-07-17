//
//  ObjectStruct.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "ObjectStruct.h"

@interface ObjectStruct()
@property (nonatomic, strong) NSMutableArray *elements;
@end

@implementation ObjectStruct


- (void)attach:(VPerson *)person{
    [self.elements addObject:person];
}

- (void)detach:(VPerson *)person{
    [self.elements removeObject:person];
}

- (void)display:(Action *)visitor{
    for (VPerson *person in self.elements) {
        [person accept:visitor];
    }
}

- (NSMutableArray *)elements{
    if (!_elements) {
        _elements = [NSMutableArray array];
    }
    return _elements;
}

@end
