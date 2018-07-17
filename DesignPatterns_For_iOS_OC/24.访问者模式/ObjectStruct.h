//
//  ObjectStruct.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VPerson.h"
#import "Action.h"

@interface ObjectStruct : NSObject

- (void)attach:(VPerson *)person;
- (void)detach:(VPerson *)person;
- (void)display:(Action *)visitor;

@end
