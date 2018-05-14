//
//  MediaAdapter.h
//  DesignPatterns_For_iOS_OC
//
//  Created by Dely on 2018/5/14.
//  Copyright © 2018年 meituan. All rights reserved.
//

#import "MediaPlayer.h"
#import "Mp4Player.h"
#import "VlcPlayer.h"

@interface MediaAdapter : MediaPlayer
- (instancetype)initWithAduioType:(AudioType)audioType;
@end
