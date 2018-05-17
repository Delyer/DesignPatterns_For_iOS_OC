//
//  HandsetBrand.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

//手机品牌类
#import <Foundation/Foundation.h>
#import "HandsetSoft.h"

@interface HandsetBrand : NSObject
@property (nonatomic, strong) HandsetSoft *soft;

//设置手机软件
- (void)setHandsetSoft:(HandsetSoft *)soft;
//运行手机软件
- (void)runSoft;

@end
