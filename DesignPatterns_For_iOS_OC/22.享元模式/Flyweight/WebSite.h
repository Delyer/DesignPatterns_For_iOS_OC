//
//  WebSite.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/13.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyweightUser.h"

@interface WebSite : NSObject

- (void)use:(FlyweightUser *)user;

@end
