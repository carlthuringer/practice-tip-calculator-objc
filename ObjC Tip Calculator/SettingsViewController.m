//
//  SettingsViewController.m
//  ObjC Tip Calculator
//
//  Created by Carl Thuringer on 9/30/15.
//  Copyright © 2015 Carl Thuringer. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;
- (IBAction)defaultTipChanged:(UISegmentedControl *)sender;

@property NSArray *tipValues;



@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int defaultTip = [defaults floatForKey:@"defaultTip"];
    self.defaultTipControl.selectedSegmentIndex = defaultTip;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)defaultTipChanged:(UISegmentedControl *)sender {
    NSInteger defaultTip = self.defaultTipControl.selectedSegmentIndex;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:defaultTip forKey:@"defaultTip"];
    [defaults synchronize];
    printf("%ld", (long)defaultTip);
}
@end
