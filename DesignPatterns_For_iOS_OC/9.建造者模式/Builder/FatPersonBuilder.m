//
//  FatPersonBuilder.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "FatPersonBuilder.h"
#import "GamePerson.h"

@interface FatPersonBuilder()
@property (nonatomic, strong) GamePerson *person;
@end

@implementation FatPersonBuilder

- (instancetype)init{
    self = [super init];
    if (self) {
        _person = [[GamePerson alloc] init];
    }
    return self;
}

- (void)buildHead{
    self.person.head = [[GamePersonHead alloc] initWithName:@"胖小人头部"];
}
- (void)buildBody{
    self.person.body = [[GamePersonBody alloc] initWithName:@"胖小人身体"];
}
- (void)buildLeftArm{
    self.person.leftArm = [[GamePersonArm alloc] initWithName:@"胖小人左胳膊"];
}
- (void)buildRightArm{
    self.person.rightArm = [[GamePersonArm alloc] initWithName:@"胖小人右胳膊"];
}
- (void)buildLeftLeg{
    self.person.leftLeg = [[GamePersonLeg alloc] initWithName:@"胖小人左腿"];
}
- (void)buildRightLeg{
    self.person.rightLeg = [[GamePersonLeg alloc] initWithName:@"胖小人右腿"];
}

- (GamePerson *)buildPerson{
    [self buildHead];
    [self buildBody];
    [self buildLeftArm];
    [self buildRightArm];
    [self buildLeftLeg];
    [self buildRightLeg];
    return self.person;
}

@end
