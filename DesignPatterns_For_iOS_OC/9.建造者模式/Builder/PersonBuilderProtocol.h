//
//  PersonBuilderProtocol.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GamePerson.h"

@protocol PersonBuilderProtocol<NSObject>

@required
- (void)buildHead;
- (void)buildBody;
- (void)buildLeftArm;
- (void)buildRightArm;
- (void)buildLeftLeg;
- (void)buildRightLeg;

@optional
- (GamePerson *)buildPerson;

@end

