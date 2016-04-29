//
//  ViewController.m
//  sonicstoryteller
//
//  Created by SREEKANTH JAGADEESAN VAZHAPPULLY on 2016-04-14.
//  Copyright © 2016 SREEKANTH JAGADEESAN VAZHAPPULLY. All rights reserved.
//

#import "ViewController.h"
#import "Recorder.h"
#import "SoundEFXBase.h"
#import "CatSoundEFX.h"
#import "BatSoundEFX.h"
#import "RoosterSoundEFX.h"
#import "BearSoundEFX.h"
#import "ChickenSoundEFX.h"
#import "CowSoundEFX.h"
#import "CrowSoundEFX.h"
#import "DogSoundEFX.h"
#import "DuckSoundEFX.h"
#import "EagleSoundEFX.h"
#import "ElephantSoundEFX.h"
#import "HorseSoundEFX.h"
#import "LionSoundEFX.h"
#import "MonkeySoundEFX.h"
#import "OwlSoundEFX.h"
#import "ScarySoundEFX.h"
#import "SeaSoundEFX.h"
#import "BearSoundEFX.h"
#import "RiverSoundEFX.h"
#import "WindSoundEFX.h"
#import "ThunderSoundEFX.h"
#import "RainSoundEFX.h"
#import "CarSoundEFX.h"
#import "TrainSoundEFX.h"
#import "UfoSoundEFX.h"
#import "NightSoundEFX.h"
#import "SuspenseSoundEFX.h"
#import "FireSoundEFX.h"
#import "ExplosionSoundEFX.h"
#import "JungleSoundEFX.h"
#import "PowerupSoundEFX.h"
#import "PigSoundEFX.h"
#import "DoorSoundEFX.h"



@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnBat;
@property (weak, nonatomic) IBOutlet UIButton *btnBear;
@property (weak, nonatomic) IBOutlet UIButton *btnRooster;
@property (weak, nonatomic) IBOutlet UIButton *btnCat;
@property (weak, nonatomic) IBOutlet UIButton *btnChicken;
@property (weak, nonatomic) IBOutlet UIButton *btnElephant;
@property (weak, nonatomic) IBOutlet UIButton *btnCow;
@property (weak, nonatomic) IBOutlet UIButton *btnCrow;
@property (weak, nonatomic) IBOutlet UIButton *btnDog;
@property (weak, nonatomic) IBOutlet UIButton *btnDuck;
@property (weak, nonatomic) IBOutlet UIButton *btnPig;
@property (weak, nonatomic) IBOutlet UIButton *btnOwl;
@property (weak, nonatomic) IBOutlet UIButton *btnMonkey;
@property (weak, nonatomic) IBOutlet UIButton *btnLion;
@property (weak, nonatomic) IBOutlet UIButton *btnHorse;
@property (weak, nonatomic) IBOutlet UIButton *btnEagle;
@property (weak, nonatomic) IBOutlet UIButton *btnCar;
@property (weak, nonatomic) IBOutlet UIButton *btnTrain;
@property (weak, nonatomic) IBOutlet UIButton *btnUfo;
@property (weak, nonatomic) IBOutlet UIButton *btnDoor;
@property (weak, nonatomic) IBOutlet UIButton *btnFire;
@property (weak, nonatomic) IBOutlet UIButton *btnExplosion;
@property (weak, nonatomic) IBOutlet UIButton *btnPowerup;
@property (weak, nonatomic) IBOutlet UIButton *btnSea;
@property (weak, nonatomic) IBOutlet UIButton *btnRain;
@property (weak, nonatomic) IBOutlet UIButton *btnThunder;
@property (weak, nonatomic) IBOutlet UIButton *btnWind;
@property (weak, nonatomic) IBOutlet UIButton *btnScary;
@property (weak, nonatomic) IBOutlet UIButton *btnSuspense;
@property (weak, nonatomic) IBOutlet UIButton *btnNight;

@property (nonatomic) NSMutableDictionary<NSString*, SoundEFXBase*> *dicSoundEFX;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.dicSoundEFX = [NSMutableDictionary dictionary];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSoundTapped:(UIButton *)btn
{
    SoundEFXBase *soundEFXBase;
    NSString *soundStringKey;
    
    if (btn == self.btnBat)
    {
        soundEFXBase = [BatSoundEFX new];
        soundStringKey = @"bat";
    }
    else if (btn == self.btnBear)
    {
        soundEFXBase = [BearSoundEFX new];
        soundStringKey = @"bear";
    }
    else if (btn == self.btnChicken)
    {
        soundEFXBase = [ChickenSoundEFX new];
        soundStringKey = @"chicken";
    }
    else if (btn == self.btnRooster)
    {
        soundEFXBase = [RoosterSoundEFX new];
        soundStringKey = @"rooster";
    }
    else if (btn == self.btnCat)
    {
        soundEFXBase = [CatSoundEFX new];
        soundStringKey = @"cat";
    }
    else if (btn == self.btnElephant)
    {
        soundEFXBase = [ElephantSoundEFX new];
        soundStringKey = @"elephant";
    }
    else if (btn == self.btnCow)
    {
        soundEFXBase = [CowSoundEFX new];
        soundStringKey = @"cow";
    }
    else if (btn == self.btnCrow)
    {
        soundEFXBase = [CrowSoundEFX new];
        soundStringKey = @"crow";
    }
    else if (btn == self.btnDog)
    {
        soundEFXBase = [DogSoundEFX new];
        soundStringKey = @"dog";
    }
    else if (btn == self.btnDuck)
    {
        soundEFXBase = [DuckSoundEFX new];
        soundStringKey = @"duck";
    }
    else if (btn == self.btnPig)
    {
        soundEFXBase = [PigSoundEFX new] ;
        soundStringKey = @"pig";
    }
    else if (btn == self.btnOwl)
    {
        soundEFXBase = [OwlSoundEFX new] ;
        soundStringKey = @"owl";
    }
    else if (btn == self.btnMonkey)
    {
        soundEFXBase = [MonkeySoundEFX new] ;
        soundStringKey = @"monkey";
    }
    else if (btn == self.btnLion)
    {
        soundEFXBase = [LionSoundEFX new];
        soundStringKey = @"lion";
    }
    else if (btn == self.btnHorse)
    {
        soundEFXBase = [HorseSoundEFX new];
        soundStringKey = @"horse";
    }
    else if (btn == self.btnEagle)
    {
        soundEFXBase = [EagleSoundEFX new];
        soundStringKey = @"eagle";
    }
    else if (btn == self.btnCar)
    {
        soundEFXBase = [CarSoundEFX new];
        soundStringKey = @"car";
    }
    else if (btn == self.btnTrain)
    {
        soundEFXBase = [TrainSoundEFX new];
        soundStringKey = @"train";
    }
    else if (btn == self.btnUfo)
    {
        soundEFXBase = [UfoSoundEFX new];
        soundStringKey = @"ufo";
    }
    else if (btn == self.btnDoor)
    {
        soundEFXBase = [DoorSoundEFX new];
        soundStringKey = @"door";
    }
    else if (btn == self.btnFire)
    {
        soundEFXBase = [FireSoundEFX new];
        soundStringKey = @"fire";
    }
    else if (btn == self.btnExplosion)
    {
        soundEFXBase = [ExplosionSoundEFX new];
        soundStringKey = @"explosion";
    }
    else if (btn == self.btnPowerup)
    {
        soundEFXBase = [PowerupSoundEFX new];
        soundStringKey = @"powerup";
    }
    else if (btn == self.btnSea)
    {
        soundEFXBase = [SeaSoundEFX new];
        soundStringKey = @"sea";
    }
    else if (btn == self.btnNight)
    {
        soundEFXBase = [NightSoundEFX new];
        soundStringKey = @"night";
    }
    else if (btn == self.btnRain)
    {
        soundEFXBase = [RainSoundEFX new];
        soundStringKey = @"rain";
    }
    else if (btn == self.btnThunder)
    {
        soundEFXBase = [ThunderSoundEFX new];
        soundStringKey = @"thunder";
    }
    else if (btn == self.btnWind)
    {
        soundEFXBase = [WindSoundEFX new];
        soundStringKey = @"wind";
    }
    else if (btn == self.btnScary)
    {
        soundEFXBase = [ScarySoundEFX new];
        soundStringKey = @"scary";
    }
    else if (btn == self.btnSuspense)
    {
        soundEFXBase = [SuspenseSoundEFX new];
        soundStringKey = @"suspense";
    }
    
    [self.dicSoundEFX setObject:soundEFXBase forKey:soundStringKey];
    [soundEFXBase playSound];
}

- (IBAction)stopTapped:(UIButton *)sender
{
    for (NSString *key in self.dicSoundEFX)
    {
        SoundEFXBase *soundEFXBase = [self.dicSoundEFX objectForKey:key];
        [soundEFXBase stopSound];
    }
    
    [[Recorder sharedInstance] stopRecording];
}

- (IBAction)recordTapped:(UIButton *)sender
{
    [[Recorder sharedInstance]record];
}
- (IBAction)playtapped:(UIButton *)sender
{
    [[Recorder sharedInstance]playLastRecorded];
}
@end
