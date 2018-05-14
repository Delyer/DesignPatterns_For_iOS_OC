//
//  MediaAdapter.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "MediaAdapter.h"

@interface MediaAdapter()
@property (nonatomic, strong) id<AdvanceMediaPlayer> advancedMusicPlayer;
@end

@implementation MediaAdapter
- (instancetype)initWithAduioType:(AudioType)audioType{
    self = [super init];
    if (self) {
        if (audioType == AudioTypeVlc) {
            self.advancedMusicPlayer = [[VlcPlayer alloc] init];
        }else if (audioType == AudioTypeMp4){
            self.advancedMusicPlayer = [[Mp4Player alloc] init];
        }
    }
    return self;
}

- (void)playWithAudioType:(AudioType)audioType fileName:(NSString *)fileName{
    if (audioType == AudioTypeVlc) {
        [self.advancedMusicPlayer playVlc:fileName];
    }else if (audioType == AudioTypeMp4){
        [self.advancedMusicPlayer playMp4:fileName];
    }
}

@end
