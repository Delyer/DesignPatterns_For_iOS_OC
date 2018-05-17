//
//  HandsetBrand.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "HandsetBrand.h"

@implementation HandsetBrand

- (void)setHandsetSoft:(HandsetSoft *)soft{
    self.soft = soft;
}

- (void)runSoft{
    [self.soft run];
}
@end
