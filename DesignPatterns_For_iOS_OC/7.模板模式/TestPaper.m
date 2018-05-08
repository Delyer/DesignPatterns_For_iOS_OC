//
//  TestPaper.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/8.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "TestPaper.h"

@implementation TestPaper

- (void)testQuestion1{
    NSLog(@"问题：杨过得到，后来给了郭靖，炼成倚天剑、屠龙刀的玄铁可能是[ ]：a.球磨铸铁 b.马口铁 c.高速合金钢 d.碳素纤维");
    NSLog(@"答案：%@", [self answer1]);
}
- (NSString *)answer1{
    return nil;
}
- (void)testQuestion2{
    NSLog(@"问题：杨过、程英、陆无双铲除了情花，造成[ ]：a.使这种植物不再害人 b.使一种珍稀物种灭绝 c.破坏了那个生物圈的生态平衡 d.造成该地区沙漠化");
    NSLog(@"答案：%@", [self answer2]);
}
- (NSString *)answer2{
    return nil;
}

- (void)testQuestion3{
    NSLog(@"问题：认为自己帅或者漂亮吗？简述原因");
    NSLog(@"答案：%@", [self answer3]);
}
- (NSString *)answer3{
    return nil;
}

@end
