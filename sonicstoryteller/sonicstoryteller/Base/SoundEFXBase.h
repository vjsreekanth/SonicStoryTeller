//
//  SoundEFXBase.h
//  sonicstoryteller
//
//  Created by SREEKANTH JAGADEESAN VAZHAPPULLY on 2016-04-27.
//  Copyright © 2016 SREEKANTH JAGADEESAN VAZHAPPULLY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SoundEFXBase : NSObject

@property (nonatomic) UIImageView *imageView;

- (void) handlePan:(UIPanGestureRecognizer *)panGesture;
- (NSString *) getSoundEFXName;

- (void) playSound;
- (void) stopSound;
@end
