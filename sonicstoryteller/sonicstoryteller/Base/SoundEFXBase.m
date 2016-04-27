//
//  SoundEFXBase.m
//  sonicstoryteller
//
//  Created by SREEKANTH JAGADEESAN VAZHAPPULLY on 2016-04-27.
//  Copyright © 2016 SREEKANTH JAGADEESAN VAZHAPPULLY. All rights reserved.
//

#import "SoundEFXBase.h"

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



@end
