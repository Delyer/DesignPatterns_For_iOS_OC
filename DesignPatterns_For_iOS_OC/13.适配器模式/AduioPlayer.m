//
//  AduioPlayer.m
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "AduioPlayer.h"
#import "MediaAdapter.h"

@implementation AduioPlayer

- (void)playWithAudioType:(AudioType)audioType fileName:(NSString *)fileName{
    if (audioType == AudioTypeMp3) {
        NSLog(@"Playing mp3 file. Name: %@",fileName);
    } else if ((audioType == AudioTypeVlc)||(audioType == AudioTypeMp4)) {
        MediaAdapter *adapter = [[MediaAdapter alloc] initWithAduioType:audioType];
        [adapter playWithAudioType:audioType fileName:fileName];
    }else {
        NSLog(@"Invalid media. %ld format not supported",audioType);
    }
}

@end
