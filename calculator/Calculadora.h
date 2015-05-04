//
//  Calculadora.h
//  calculator
//
//  Created by Fer Rowies on 5/4/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorViewController.h"

@interface Calculadora : NSObject <CalculatorViewControllerDelegate>

@property (nonatomic) double resultadoParcial;

@end
