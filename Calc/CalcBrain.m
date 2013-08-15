//
//  CalcBrain.m
//  Calc
//
//  Created by liluo on 8/15/13.
//  Copyright (c) 2013 liluo. All rights reserved.
//

#import "CalcBrain.h"

@interface CalcBrain()

@property (nonatomic, strong) NSMutableArray *operandStack;

@end


@implementation CalcBrain

- (NSMutableArray *)operandStack
{
    if (_operandStack == nil) _operandStack = [[NSMutableArray alloc] init];
    return _operandStack;
}

- (void)pushOpreand:(double)operand
{
    NSNumber *operandObject = [NSNumber numberWithDouble:operand];
    [self.operandStack addObject:operandObject];
}

- (double)popOpreand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if (operandObject) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

- (double)performOperation:(NSString *)operation
{
    double result = 0;
    if ([operation isEqualToString:@"+"]) {
        result = [self popOpreand] + [self popOpreand];
    } else if ([operation isEqualToString:@"-"]) {
        result = [self popOpreand] - [self popOpreand];
    } else if ([operation isEqualToString:@"*"]) {
        result = [self popOpreand] * [self popOpreand];
    } else if ([operation isEqualToString:@"/"]){
        result = [self popOpreand] / [self popOpreand];
    }
    
    [self pushOpreand:result];
    return result;
};

@end
