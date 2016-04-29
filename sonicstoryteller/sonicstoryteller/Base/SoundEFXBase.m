//
//  SoundEFXBase.m
//  sonicstoryteller
//
//  Created by SREEKANTH JAGADEESAN VAZHAPPULLY on 2016-04-27.
//  Copyright © 2016 SREEKANTH JAGADEESAN VAZHAPPULLY. All rights reserved.
//

#import "SoundEFXBase.h"
#import <AVFoundation/AVFoundation.h>

@interface SoundEFXBase ()
{
  AVAudioPlayer *backgroundMusicPlayer;
}
@end

@implementation SoundEFXBase

- (NSString *) getSoundEFXName
{
    return nil;
}


- (void)setImageView:(UIImageView *)imageView
{
    _imageView = imageView;
    
    [self addEventWithImageView:imageView];
}

- (void) addEventWithImageView:(UIImageView *)imgView
{
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    
    self.imageView.userInteractionEnabled = YES;
    [self.imageView addGestureRecognizer:pan];
}

- (void) handlePan:(UIPanGestureRecognizer *)panGesture
{
    CGPoint point = [panGesture locationInView:self.imageView.superview];
    self.imageView.center = CGPointMake(point.x, self.imageView.center.y);
}


- (void) playSound
{
    NSString *songString = [self getSoundEFXName];
    NSArray *songStringSplitted = [songString componentsSeparatedByString:@"."];
    NSString *song = [[NSBundle mainBundle]
                            pathForResource:[songStringSplitted objectAtIndex:0] ofType:[songStringSplitted objectAtIndex:1]];
    NSURL *url = [NSURL fileURLWithPath:song];
    
    backgroundMusicPlayer = [[AVAudioPlayer alloc]
                                  initWithContentsOfURL:url error:nil];
    backgroundMusicPlayer.volume = 0.7;
    [backgroundMusicPlayer prepareToPlay];
    [backgroundMusicPlayer play];
}

- (void) stopSound
{
    [backgroundMusicPlayer stop];
}

@end
