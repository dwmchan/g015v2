//
//  IEDSettingsViewController.m
//  g015v2
//
//  Created by Donald Chan on 11/03/2014.
//  Copyright (c) 2014 iEndeavour. All rights reserved.
//

#import "IEDSettingsViewController.h"

@interface IEDSettingsViewController ()
@property (strong, nonatomic) IBOutlet UITextField *currentHandicapTextField;
@property (strong, nonatomic) IBOutlet UISwitch *metricSwitch;

@end

@implementation IEDSettingsViewController

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
    self.currentHandicapTextField.delegate = self;
    self.metricSwitch.on = [[NSUserDefaults standardUserDefaults] boolForKey:kCCMetricEnabledKey];
    
    [self.metricSwitch addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
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

#pragma mark - Helper Methods

-(void) valueChanged: (id) sender
{
    if (sender == self.currentHandicapTextField) {
        [[NSUserDefaults standardUserDefaults] setInteger:(int) self.currentHandicapTextField forKey:@"currentHandicap"];
    }
    else if (sender == self.metricSwitch) {
        [[NSUserDefaults standardUserDefaults] setBool:self.metricSwitch.isOn forKey:kCCMetricEnabledKey];
    }
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}


#pragma mark - UITextFieldDelegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.currentHandicapTextField resignFirstResponder];
    return YES;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSUInteger newLength = [self.currentHandicapTextField.text length] + [string length] - range.length;
    return (newLength > 2) ? NO:YES;
}



@end
