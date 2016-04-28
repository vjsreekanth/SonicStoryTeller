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
@property (weak, nonatomic) IBOutlet UIButton *btnRiver;
@property (weak, nonatomic) IBOutlet UIButton *btnRain;
@property (weak, nonatomic) IBOutlet UIButton *btnThunder;
@property (weak, nonatomic) IBOutlet UIButton *btnWind;
@property (weak, nonatomic) IBOutlet UIButton *btnScary;
@property (weak, nonatomic) IBOutlet UIButton *btnSuspense;

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
    if (btn == self.btnBat)
    {
        [self.dicSoundEFX setObject:[BatSoundEFX new] forKey:@"bat"];
    }
    else if (btn == self.btnBear)
    {
        [self.dicSoundEFX setObject:[BearSoundEFX new] forKey:@"bear"];
    }
    else if (btn == self.btnChicken)
    {
        [self.dicSoundEFX setObject:[ChickenSoundEFX new] forKey:@"chicken"];
    }
    else if (btn == self.btnRooster)
    {
        [self.dicSoundEFX setObject:[RoosterSoundEFX new] forKey:@"rooster"];
    }
    else if (btn == self.btnCat)
    {
        [self.dicSoundEFX setObject:[CatSoundEFX new] forKey:@"cat"];
    }
    else if (btn == self.btnElephant)
    {
        [self.dicSoundEFX setObject:[ElephantSoundEFX new] forKey:@"elephant"];
    }
    else if (btn == self.btnCow)
    {
        [self.dicSoundEFX setObject:[CowSoundEFX new] forKey:@"cow"];
    }
    else if (btn == self.btnCrow)
    {
        [self.dicSoundEFX setObject:[CrowSoundEFX new] forKey:@"crow"];
    }
    else if (btn == self.btnDog)
    {
        [self.dicSoundEFX setObject:[DogSoundEFX new] forKey:@"dog"];
    }
    else if (btn == self.btnDuck)
    {
        [self.dicSoundEFX setObject:[DuckSoundEFX new] forKey:@"duck"];
    }
    else if (btn == self.btnPig)
    {
        [self.dicSoundEFX setObject:[PigSoundEFX new] forKey:@"pig"];
    }
    else if (btn == self.btnOwl)
    {
        [self.dicSoundEFX setObject:[OwlSoundEFX new] forKey:@"owl"];
    }
    else if (btn == self.btnMonkey)
    {
        [self.dicSoundEFX setObject:[MonkeySoundEFX new] forKey:@"monkey"];
    }
    else if (btn == self.btnLion)
    {
        [self.dicSoundEFX setObject:[LionSoundEFX new] forKey:@"lion"];
    }
    else if (btn == self.btnHorse)
    {
        [self.dicSoundEFX setObject:[HorseSoundEFX new] forKey:@"horse"];
    }
    else if (btn == self.btnEagle)
    {
        [self.dicSoundEFX setObject:[EagleSoundEFX new] forKey:@"eagle"];
    }
    else if (btn == self.btnCar)
    {
        [self.dicSoundEFX setObject:[CarSoundEFX new] forKey:@"car"];
    }
    else if (btn == self.btnTrain)
    {
        [self.dicSoundEFX setObject:[TrainSoundEFX new] forKey:@"train"];
    }
    else if (btn == self.btnUfo)
    {
        [self.dicSoundEFX setObject:[UfoSoundEFX new] forKey:@"ufo"];
    }
    else if (btn == self.btnDoor)
    {
        [self.dicSoundEFX setObject:[DoorSoundEFX new] forKey:@"door"];
    }
    else if (btn == self.btnFire)
    {
        [self.dicSoundEFX setObject:[FireSoundEFX new] forKey:@"fire"];
    }
    else if (btn == self.btnExplosion)
    {
        [self.dicSoundEFX setObject:[ExplosionSoundEFX new] forKey:@"explosion"];
    }
    else if (btn == self.btnPowerup)
    {
        [self.dicSoundEFX setObject:[PowerupSoundEFX new] forKey:@"powerup"];
    }
    else if (btn == self.btnSea)
    {
        [self.dicSoundEFX setObject:[SeaSoundEFX new] forKey:@"sea"];
    }
    else if (btn == self.btnRiver)
    {
        [self.dicSoundEFX setObject:[RiverSoundEFX new] forKey:@"river"];
    }
    else if (btn == self.btnRain)
    {
        [self.dicSoundEFX setObject:[RainSoundEFX new] forKey:@"rain"];
    }
    else if (btn == self.btnThunder)
    {
        [self.dicSoundEFX setObject:[ThunderSoundEFX new] forKey:@"thunder"];
    }
    else if (btn == self.btnWind)
    {
        [self.dicSoundEFX setObject:[WindSoundEFX new] forKey:@"wind"];
    }
    else if (btn == self.btnScary)
    {
        [self.dicSoundEFX setObject:[ScarySoundEFX new] forKey:@"scary"];
    }
    else if (btn == self.btnSuspense)
    {
        [self.dicSoundEFX setObject:[SuspenseSoundEFX new] forKey:@"suspense"];
    }
}


@end
