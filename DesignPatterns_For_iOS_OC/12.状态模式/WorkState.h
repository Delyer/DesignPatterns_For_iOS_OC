//
//  WorkState.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Work.h"
@class Work;

@protocol WorkState <NSObject>
@required
- (void)writeProgramWithWork:(Work *)work;
@end

