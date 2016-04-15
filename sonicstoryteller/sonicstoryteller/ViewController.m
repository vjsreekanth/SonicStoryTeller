//
//  ViewController.m
//  sonicstoryteller
//
//  Created by SREEKANTH JAGADEESAN VAZHAPPULLY on 2016-04-15.
//  Copyright © 2016 SREEKANTH JAGADEESAN VAZHAPPULLY. All rights reserved.
//

#import "ViewController.h"
#import "BJIConverter.h"
#import "PCMMixer.h"
#import <AVFoundation/AVAudioPlayer.h>

@interface ViewController ()

@property (nonatomic) AVAudioPlayer *avAudio;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *mp3s = [self getMP3s];
    NSArray *cafs = [self getCAFs:mp3s];
    //  Convert all mp3's to cafs
    [BJIConverter convertFiles:mp3s toFiles:cafs];
    
    NSArray *files = cafs;
    NSArray *times = [self getTimes];
    NSString *mixURL = [self getMixURL];
    
    OSStatus status = [PCMMixer mixFiles:files atTimes:times toMixfile:mixURL];
    
    [self playMix:mixURL withStatus:status];
    [BJIConverter convertFile:mixURL toFile:[mixURL stringByReplacingOccurrencesOfString:@".caf" withString:@".aiff"]];
}

- (NSArray*)getFiles {
    NSString *inFile = [[NSBundle mainBundle] pathForResource:@"toms.caf" ofType:nil];
    return [NSArray arrayWithObjects:inFile,inFile,inFile,inFile, nil];
}

- (NSArray *)getTimes {
    //  First item must be at time 0. All other sounds must be relative to this first sound.
    return [NSArray arrayWithObjects:[NSNumber numberWithInt:0],[NSNumber numberWithInt:10],[NSNumber numberWithInt:20], nil];
}

- (NSString*)getMixURL {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[paths objectAtIndex:0] stringByAppendingPathComponent:@"Mix.caf"];
}

- (void)playMix:(NSString*)mixURL withStatus:(OSStatus)status {
    if (status == OSSTATUS_MIX_WOULD_CLIP) {
        [self.view setBackgroundColor:[UIColor redColor]];
    } else {
        [self.view setBackgroundColor:[UIColor greenColor]];
        
        NSURL *url = [NSURL fileURLWithPath:mixURL];
        
        NSData *urlData = [NSData dataWithContentsOfURL:url];
        
        NSLog(@"wrote mix file of size %lu : %@", (unsigned long)[urlData length], mixURL);
        
        AVAudioPlayer *avAudioObj = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        
        self.avAudio = avAudioObj;
        
        [avAudioObj prepareToPlay];
        [avAudioObj play];
    }
}

- (NSArray*)getMP3s {
    //  Find all mp3's in bundle
    NSString *bundleRoot = [[NSBundle mainBundle] bundlePath];
    NSFileManager *fm = [NSFileManager defaultManager];
    NSArray *dirContents = [fm contentsOfDirectoryAtPath:bundleRoot error:nil];
    NSPredicate *fltr = [NSPredicate predicateWithFormat:@"self ENDSWITH '.mp3'"];
    NSArray *mp3s = [dirContents filteredArrayUsingPredicate:fltr];
    
    //  Convert mp3's to their full paths
    NSMutableArray *fullmp3s = [[NSMutableArray alloc] initWithCapacity:[mp3s count]];
    [mp3s enumerateObjectsUsingBlock:^(NSString *file, NSUInteger idx, BOOL *stop) {
        [fullmp3s addObject:[bundleRoot stringByAppendingPathComponent:file]];
    }];
    return fullmp3s;
}

- (NSArray*)getCAFs:(NSArray*)mp3s {
    //  Find 'Documents' directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    
    //  Create AIFFs from mp3's
    NSMutableArray *cafs = [[NSMutableArray alloc] initWithCapacity:[mp3s count]];
    [mp3s enumerateObjectsUsingBlock:^(NSString *file, NSUInteger idx, BOOL *stop) {
        [cafs addObject:[docPath stringByAppendingPathComponent:[[file lastPathComponent] stringByReplacingOccurrencesOfString:@".mp3" withString:@".caf"]]];
    }];
    return cafs;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
