//
//  Calculadora.m
//  calculator
//
//  Created by Fer Rowies on 5/4/15.
//  Copyright (c) 2015 Globant. All rights reserved.
//

#import "Calculadora.h"

@implementation Calculadora

- (double)calculatorViewController:(CalculatorViewController *)sender sumarOperando:(double)operando {
    
    self.resultadoParcial += operando;
    
    return self.resultadoParcial;
}

@end
