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


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnBat;
@property (weak, nonatomic) IBOutlet UIButton *btnBear;
@property (weak, nonatomic) IBOutlet UIButton *btnRooster;
@property (weak, nonatomic) IBOutlet UIButton *btnCat;
@property (weak, nonatomic) IBOutlet UIButton *btnChicken;
@property (weak, nonatomic) IBOutlet UIButton *btnCow;
@property (weak, nonatomic) IBOutlet UIButton *btnCrow;
@property (weak, nonatomic) IBOutlet UIButton *btnDog;
@property (weak, nonatomic) IBOutlet UIButton *btnDuck;
@property (weak, nonatomic) IBOutlet UIButton *btnEagle;
@property (weak, nonatomic) IBOutlet UIButton *btnElephant;
@property (weak, nonatomic) IBOutlet UIButton *btnHorse;
@property (weak, nonatomic) IBOutlet UIButton *btnLion;
@property (weak, nonatomic) IBOutlet UIButton *btnMonkey;
@property (weak, nonatomic) IBOutlet UIButton *btnOwl;
@property (weak, nonatomic) IBOutlet UIButton *btnPig;
@property (weak, nonatomic) IBOutlet UIButton *btnRiver;
@property (weak, nonatomic) IBOutlet UIButton *btnWind;
@property (weak, nonatomic) IBOutlet UIButton *btnThunder;
@property (weak, nonatomic) IBOutlet UIButton *btnRain;
@property (weak, nonatomic) IBOutlet UIButton *btnCar;
@property (weak, nonatomic) IBOutlet UIButton *btnTrain;
@property (weak, nonatomic) IBOutlet UIView *screenView;
@property (weak, nonatomic) IBOutlet UIButton *btnUfo;
@property (weak, nonatomic) IBOutlet UIButton *btnNight;
@property (weak, nonatomic) IBOutlet UIButton *btnSuspense;
@property (weak, nonatomic) IBOutlet UIButton *btnFire;
@property (weak, nonatomic) IBOutlet UIButton *btnExplosion;
@property (weak, nonatomic) IBOutlet UIButton *btnJungle;
@property (weak, nonatomic) IBOutlet UIButton *btnPowerup;

@property (nonatomic) NSMutableArray *arrSoundEFX;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.arrSoundEFX = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSoundTapped:(UIButton *)btn
{
    SoundEFXBase *soundEFX;
    
    if (btn == self.btnBat)
    {
        soundEFX = [[BatSoundEFX alloc]init];
    }
    else if (btn == self.btnBear)
    {
        soundEFX = [[BearSoundEFX alloc]init];
    }
    else if (btn == self.btnRooster)
    {
        soundEFX = [[RoosterSoundEFX alloc]init];
    }
    else if (btn == self.btnCat)
    {
        soundEFX = [[CatSoundEFX alloc]init];
    }
    else if (btn == self.btnChicken)
    {
        soundEFX = [[ChickenSoundEFX alloc]init];
    }
    else if (btn == self.btnCow)
    {
        soundEFX = [[CowSoundEFX alloc]init];
    }
    else if (btn == self.btnCrow)
    {
        soundEFX = [[CrowSoundEFX alloc]init];
    }
    else if (btn == self.btnDog)
    {
        soundEFX = [[DogSoundEFX alloc]init];
    }
    else if (btn == self.btnDuck)
    {
        soundEFX = [[DuckSoundEFX alloc]init];
    }
    else if (btn == self.btnEagle)
    {
        soundEFX = [[EagleSoundEFX alloc]init];
    }
    else if (btn == self.btnElephant)
    {
        soundEFX = [[ElephantSoundEFX alloc]init];
    }
    else if (btn == self.btnHorse)
    {
        soundEFX = [[HorseSoundEFX alloc]init];
    }
    else if (btn == self.btnLion)
    {
        soundEFX = [[LionSoundEFX alloc]init];
    }
    else if (btn == self.btnMonkey)
    {
        soundEFX = [[MonkeySoundEFX alloc]init];
    }
    else if (btn == self.btnOwl)
    {
        soundEFX = [[OwlSoundEFX alloc]init];
    }
    else if (btn == self.btnPig)
    {
        soundEFX = [[PigSoundEFX alloc]init];
    }
    else if (btn == self.btnRiver)
    {
        soundEFX = [[RiverSoundEFX alloc]init];
    }
    else if (btn == self.btnWind)
    {
        soundEFX = [[WindSoundEFX alloc]init];
    }
    else if (btn == self.btnThunder)
    {
        soundEFX = [[ThunderSoundEFX alloc]init];
    }
    else if (btn == self.btnRain)
    {
        soundEFX = [[RainSoundEFX alloc]init];
    }
    else if (btn == self.btnCar)
    {
        soundEFX = [[CarSoundEFX alloc]init];
    }
    else if (btn == self.btnTrain)
    {
        soundEFX = [[TrainSoundEFX alloc]init];
    }
    else if (btn == self.btnUfo)
    {
        soundEFX = [[UfoSoundEFX alloc]init];
    }
    else if (btn == self.btnNight)
    {
        soundEFX = [[NightSoundEFX alloc]init];
    }
    else if (btn == self.btnSuspense)
    {
        soundEFX = [[SuspenseSoundEFX alloc]init];
    }
    else if (btn == self.btnFire)
    {
        soundEFX = [[FireSoundEFX alloc]init];
    }
    else if (btn == self.btnExplosion)
    {
        soundEFX = [[ExplosionSoundEFX alloc]init];
    }
    else if (btn == self.btnJungle)
    {
        soundEFX = [[JungleSoundEFX alloc]init];
    }
    else if (btn == self.btnPowerup)
    {
        soundEFX = [[PowerupSoundEFX alloc]init];
    }
    
    soundEFX.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 100, 50, 50)];
    [soundEFX.imageView setImage:btn.imageView.image];
    [self.screenView addSubview:soundEFX.imageView];
    
    [self.arrSoundEFX addObject:soundEFX];
}


@end
