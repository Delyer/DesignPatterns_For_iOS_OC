//
//  PersonBuilderDirector.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/9.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonBuilderProtocol.h"
#import "GamePerson.h"

@interface PersonBuilderDirector : NSObject

- (instancetype)initWithBuilder:(id<PersonBuilderProtocol>)builder;
- (GamePerson *)builderPerson;

@end
