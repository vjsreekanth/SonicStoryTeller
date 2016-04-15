//
//  AudioMixer.h
//  sonicstoryteller
//
//  Created by SREEKANTH JAGADEESAN VAZHAPPULLY on 2016-04-15.
//  Copyright © 2016 SREEKANTH JAGADEESAN VAZHAPPULLY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AudioMixer : NSObject

+ (instancetype) sharedInstance;

- (void) mixAndPlay;

@end
