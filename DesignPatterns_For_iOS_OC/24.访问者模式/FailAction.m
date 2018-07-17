//
//  FailAction.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/7/17.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "FailAction.h"

@implementation FailAction

- (void)getManConculsion:(VMan *)man{
    NSLog(@"男人失败时，闷头喝酒，谁也不用劝");
}

- (void)getWomenConculsion:(VWomen *)women{
    NSLog(@"女人失败时，眼泪汪汪，谁也劝不了");
}

@end
