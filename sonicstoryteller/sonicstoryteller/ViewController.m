//
//  ViewController.m
//  sonicstoryteller
//
//  Created by SREEKANTH JAGADEESAN VAZHAPPULLY on 2016-04-14.
//  Copyright © 2016 SREEKANTH JAGADEESAN VAZHAPPULLY. All rights reserved.
//

#import "ViewController.h"
#import "Recorder.h"

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

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
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
        NSLog(@"bat");
    }
    else if (btn == self.btnBear)
    {
        NSLog(@"bear");
    }
    else if (btn == self.btnRooster)
    {
        NSLog(@"rooster");
    }
    else if (btn == self.btnCat)
    {
        NSLog(@"cat");
    }
    else if (btn == self.btnChicken)
    {
        NSLog(@"chicken");
    }
    else if (btn == self.btnCow)
    {
        NSLog(@"cow");
    }
    else if (btn == self.btnCrow)
    {
        NSLog(@"crow");
    }
    else if (btn == self.btnDog)
    {
        NSLog(@"dog");
    }
    else if (btn == self.btnDuck)
    {
        NSLog(@"duck");
    }
    else if (btn == self.btnEagle)
    {
        NSLog(@"eagle");
    }
    else if (btn == self.btnElephant)
    {
        NSLog(@"elephant");
    }
    else if (btn == self.btnHorse)
    {
        NSLog(@"horse");
    }
    else if (btn == self.btnLion)
    {
        NSLog(@"lion");
    }
    else if (btn == self.btnMonkey)
    {
        NSLog(@"monkey");
    }
    else if (btn == self.btnOwl)
    {
        NSLog(@"owl");
    }
    else if (btn == self.btnPig)
    {
        NSLog(@"pig");
    }
    else if (btn == self.btnRiver)
    {
        NSLog(@"river");
    }
    else if (btn == self.btnWind)
    {
        NSLog(@"wind");
    }
    else if (btn == self.btnThunder)
    {
        NSLog(@"thunder");
    }
    else if (btn == self.btnRain)
    {
        NSLog(@"rain");
    }
    else if (btn == self.btnCar)
    {
        NSLog(@"car");
    }
    else if (btn == self.btnTrain)
    {
        NSLog(@"train");
    }
}


@end
