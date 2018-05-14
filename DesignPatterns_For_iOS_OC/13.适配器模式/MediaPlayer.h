//
//  MediaPlayer.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, AudioType) {
    AudioTypeInvaild = 0,
    AudioTypeMp3,
    AudioTypeVlc,
    AudioTypeMp4
};

@interface MediaPlayer : NSObject
- (void)playWithAudioType:(AudioType)audioType fileName:(NSString *)fileName;
@end
