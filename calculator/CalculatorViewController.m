//
//  CalculatorViewController.m
//  calculator
//
//  Created by Fer Rowies on 4/27/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)operandButtonTouched:(UIButton *)sender {
    
    
    NSMutableString *parcial = [self.resultLabel.text mutableCopy];

    [parcial appendString:sender.titleLabel.text];
    
    [self.resultLabel setText:parcial];
    
}

- (IBAction)operatorButtonTouched:(UIButton *)sender{
 
    if([sender.titleLabel.text isEqualToString:@"+"]) {
        
        [self.delegate calculatorViewController:self sumarOperando:[self.resultLabel.text doubleValue]];
        
        self.resultLabel.text = @"";
    }
    
    if([sender.titleLabel.text isEqualToString:@"="]) {
        double resultado = [self.delegate calculatorViewController:self sumarOperando:[self.resultLabel.text doubleValue]];
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f",resultado];
    }
    
//    if([sender respondsToSelector:@selector(titleLabel)]){
//       id algo = [sender titleLabel];
//    }
    
//    if([sender isKindOfClass:[UIButton class]]) {
//        UIButton *operandButton = sender;
//        
//        
//
//    }

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
