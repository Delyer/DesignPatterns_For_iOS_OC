//
//  GamePerson.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

//人 - 产品类，由多个组件组成
#import <Foundation/Foundation.h>
#import "GamePersonHead.h"
#import "GamePersonBody.h"
#import "GamePersonArm.h"
#import "GamePersonLeg.h"

@interface GamePerson : NSObject

@property (nonatomic, strong) GamePersonHead *head;
@property (nonatomic, strong) GamePersonBody *body;
@property (nonatomic, strong) GamePersonArm *leftArm;
@property (nonatomic, strong) GamePersonArm *rightArm;
@property (nonatomic, strong) GamePersonLeg *leftLeg;
@property (nonatomic, strong) GamePersonLeg *rightLeg;

@end
