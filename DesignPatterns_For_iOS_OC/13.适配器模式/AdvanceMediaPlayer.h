//
//  AdvanceMediaPlayer.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AdvanceMediaPlayer <NSObject>
@optional
- (void)playVlc:(NSString *)fileName;
- (void)playMp4:(NSString *)fileName;
@end
