//
//  IEDHomeViewController.m
//  g015v2
//
//  Created by Donald Chan on 11/03/2014.
//  Copyright (c) 2014 iEndeavour. All rights reserved.
//

#import "IEDHomeViewController.h"

@interface IEDHomeViewController ()
@property (strong, nonatomic) IBOutlet UILabel *handicapLabel;
@property (strong, nonatomic) IBOutlet UILabel *strokeAverageLabel;
@property (strong, nonatomic) IBOutlet UILabel *drivingAccuracyLabel;
@property (strong, nonatomic) IBOutlet UILabel *drivingDistanceLabel;
@property (strong, nonatomic) IBOutlet UILabel *greensInRegulationLabel;
@property (strong, nonatomic) IBOutlet UILabel *averagePuttsPerRoundLabel;
@property (strong, nonatomic) IBOutlet UILabel *puttsPerGirLabel;

@end

@implementation IEDHomeViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
