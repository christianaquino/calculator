//
//  CalculatorViewController.h
//  calculator
//
//  Created by Fer Rowies on 4/27/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalculatorViewController;

@protocol CalculatorViewControllerDelegate

- (double)calculatorViewController:(CalculatorViewController *)sender sumarOperando:(double)operando;

@end

@interface CalculatorViewController : UIViewController

@property (weak, nonatomic) id<CalculatorViewControllerDelegate> delegate;

@end
