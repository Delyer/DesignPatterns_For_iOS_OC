//
//  GiveGiftDelegate.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/2.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GiveGiftDelegate <NSObject>
//送洋娃娃
- (void)giveDolls;

//送鲜花
- (void)giveFlowers;

//送巧克力
- (void)giveChocolate;
@end
