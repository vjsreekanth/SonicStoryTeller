//
//  Recorder.m
//  sonicstoryteller
//
//  Created by SREEKANTH JAGADEESAN VAZHAPPULLY on 2016-04-18.
//  Copyright © 2016 SREEKANTH JAGADEESAN VAZHAPPULLY. All rights reserved.
//

#import "Recorder.h"
#import <AVFoundation/AVFoundation.h>
#import "AudioMixer.h"

@interface Recorder()
{
    AVAudioRecorder *recorder;
}

@end
@implementation Recorder

+ (instancetype)sharedInstance
{
    static Recorder *shared;
    if (!shared)
    {
        shared = [[Recorder alloc] initPrivate];
    }
    
    return shared;
}

- (instancetype) initPrivate
{
    self = [super init];
    if (self)
    {
        [self initializeRecorder];
    }
    return self;
}

-(void)initializeRecorder
{
    // Set the audio file
    NSArray *pathComponents = [NSArray arrayWithObjects:
                               [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject],
                               @"recorded.caf",
                               nil];
    NSURL *outputFileURL = [NSURL fileURLWithPathComponents:pathComponents];
    
    // Setup audio session
    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
    
    // Define the recorder setting
    NSDictionary *recordSetting;// = [[NSMutableDictionary alloc] init];
    
    /*[recordSetting setValue:[NSNumber numberWithInt:kAudioFormatMPEG4AAC] forKey:AVFormatIDKey];
     [recordSetting setValue:[NSNumber numberWithFloat:44100.0] forKey:AVSampleRateKey];
     [recordSetting setValue:[NSNumber numberWithInt: 2] forKey:AVNumberOfChannelsKey];*/
    
    recordSetting = [NSDictionary
                     dictionaryWithObjectsAndKeys:
                     [NSNumber numberWithInt:AVAudioQualityMin],
                     AVEncoderAudioQualityKey,
                     [NSNumber numberWithInt:16],
                     AVEncoderBitRateKey,
                     [NSNumber numberWithInt: 2],
                     AVNumberOfChannelsKey,
                     [NSNumber numberWithFloat:44100.0],
                     AVSampleRateKey,
                     nil];
    
    // Initiate and prepare the recorder
    recorder = [[AVAudioRecorder alloc] initWithURL:outputFileURL settings:recordSetting error:NULL];
    recorder.meteringEnabled = YES;
    [recorder prepareToRecord];
}

-(void)record
{
    if (!recorder.recording)
    {
        AVAudioSession *session = [AVAudioSession sharedInstance];
        [session setActive:YES error:nil];
        
        // Start recording
        [recorder record];
    }
    else
    {
        // Pause recording
        [recorder pause];
    }
}

-(void)playLastRecorded
{
    if (!recorder.recording)
    {
        AVAudioSession *audioSession = [AVAudioSession sharedInstance];
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:nil];
        [[AudioMixer sharedInstance] mixAndPlay];
    }
}

-(void)stopRecording
{
    [recorder stop];
    
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setActive:NO error:nil];
}
@end

