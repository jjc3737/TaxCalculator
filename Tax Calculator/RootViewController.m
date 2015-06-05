//
//  RootViewController.m
//  Tax Calculator
//
//  Created by Jane Chung on 6/4/15.
//  Copyright (c) 2015 JH Chung. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.caTax = 0.075;
    self.chiTax = 0.0925;
    self.nyTax = 0.045;
}
- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *enteredPrice = self.priceTextField.text;
    double price = enteredPrice.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = price * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = price * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    } else {
        double result = price * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }


}


@end
