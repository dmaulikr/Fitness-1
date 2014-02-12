//
//  ISSetWorkoutGoalViewController.m
//  Fitness
//
//  Created by ispluser on 2/12/14.
//  Copyright (c) 2014 ISC. All rights reserved.
//

#import "ISSetWorkoutGoalViewController.h"
#import "macros.txt"

@interface ISSetWorkoutGoalViewController ()

@end

@implementation ISSetWorkoutGoalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupGoalsRB];
    [self setupNavigationBar];
   // self.navigationController.navigationBarHidden=YES;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//--------------------------------setting up navigation bar--------------------------------------

-(void)setupNavigationBar
{
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackTranslucent];
    self.wantsFullScreenLayout=YES;
    
    UILabel *titleLable=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 19)];
    
    titleLable.backgroundColor=[UIColor clearColor];
    titleLable.text=@"Workout Goals";
    titleLable.font=[UIFont fontWithName:@"Arial" size:20.0];
    titleLable.textColor= [UIColor colorWithHue:31.0/360.0 saturation:99.0/100.0 brightness:87.0/100.0 alpha:1];
    
    self.navigationItem.titleView=titleLable;
    self.navigationItem.titleView.backgroundColor=[UIColor clearColor];
    
    UIImage *backImage=[UIImage imageNamed:@"back.png"];
    [self.navigationItem.leftBarButtonItem setImage:backImage];
    
    
    
}




//-------------------------------Handle Goals RB checked change---------------------------------


-(void)setupGoalsRB
{
    //UIImage *imageUnchecked = [UIImage imageNamed:@"radoi.png"];
    UIImage *imageChecked = [UIImage imageNamed:@"radio-sel.png"];
    
    [self.milesRB setImage:imageChecked forState:UIControlStateSelected];
    [self.caloriesRB setImage:imageChecked forState:UIControlStateSelected];
    [self.durationRB setImage:imageChecked forState:UIControlStateSelected];
    
}
-(void)clearGoalType
{
    self.milesRB.selected=NO;
    self.caloriesRB.selected=NO;
    self.durationRB.selected=NO;
}




- (IBAction)durationRBClicked:(id)sender {
    
    if (!self.durationRB.selected) {
        
        
        [self clearGoalType];
        self.durationRB.selected=YES;
    }

}

- (IBAction)caloriesRBClicked:(id)sender {
    if (!self.caloriesRB.selected) {
        
        
        [self clearGoalType];
        self.caloriesRB.selected=YES;
    }
}

- (IBAction)milesRBClicked:(id)sender {
    if (!self.milesRB.selected) {
        
        
        [self clearGoalType];
        self.milesRB.selected=YES;
    }
}
@end
