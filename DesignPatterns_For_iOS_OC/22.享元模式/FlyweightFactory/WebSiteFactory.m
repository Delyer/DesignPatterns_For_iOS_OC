//
//  WebSiteFactory.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/13.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "WebSiteFactory.h"
@interface WebSiteFactory()
@property (nonatomic, strong) NSMutableDictionary *flyweightDict;
@end

@implementation WebSiteFactory

- (WebSite *)getWebSiteCategory:(NSString *)nameKey{
    if (![self.flyweightDict valueForKey:nameKey]) {
        ConcreteWebSite *webSite = [[ConcreteWebSite alloc] initWithWebSiteName:nameKey];
        [self.flyweightDict setValue:webSite forKey:nameKey];
    }
    return [self.flyweightDict valueForKey:nameKey];
}

- (NSMutableDictionary *)flyweightDict{
    if (!_flyweightDict) {
        _flyweightDict = [NSMutableDictionary dictionary];
    }
    return _flyweightDict;
}

- (NSInteger)getWebSiteCount{
    return self.flyweightDict.allKeys.count;
}

@end
