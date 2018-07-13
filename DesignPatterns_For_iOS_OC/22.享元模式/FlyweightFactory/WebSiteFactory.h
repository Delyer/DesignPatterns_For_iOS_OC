//
//  WebSiteFactory.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/13.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConcreteWebSite.h"

@interface WebSiteFactory : NSObject

//获得网站分类
- (WebSite *)getWebSiteCategory:(NSString *)nameKey;

//获取网站分类总数
- (NSInteger)getWebSiteCount;
@end
