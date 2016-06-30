//
//  ChangeTemperatureFormatViewController.m
//  wos_study
//
//  Created by Naver on 2016. 6. 29..
//  Copyright © 2016년 worksmobile. All rights reserved.
//

#import "ChangeTemperatureFormatViewController.h"

@interface ChangeTemperatureFormatViewController ()

@end

@implementation ChangeTemperatureFormatViewController

@synthesize tempFFormatTextField, tempCFormatTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [tempCFormatTextField setEnabled:false];
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

- (IBAction)tempFormatChangeAction:(id)sender {
    NSString *temperatureStr = tempFFormatTextField.text;
    
    if (![[temperatureStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqualToString:@""]) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        formatter.numberStyle = NSNumberFormatterDecimalStyle;
        NSNumber *temperature = [formatter numberFromString:temperatureStr];
        
        if (temperature != nil) {
            float celsius = (temperature.floatValue - 32) / 1.8;
            tempCFormatTextField.text = [NSString stringWithFormat:@"%f", celsius];
        }
        else {
            tempCFormatTextField.text = @"Error #02";
            NSLog(@"Error #02");
        }
    }
    else {
        tempCFormatTextField.text = @"Error #01";
        NSLog(@"Error #01");
    }
}
@end
