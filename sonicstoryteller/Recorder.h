//
//  Recorder.h
//  sonicstoryteller
//
//  Created by SREEKANTH JAGADEESAN VAZHAPPULLY on 2016-04-18.
//  Copyright © 2016 SREEKANTH JAGADEESAN VAZHAPPULLY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recorder : NSObject
+ (instancetype)sharedInstance;
-(void)record;
-(void)playLastRecorded;
-(void)stopRecording;

@end
