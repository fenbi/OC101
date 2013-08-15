//
//  CalcBrain.h
//  Calc
//
//  Created by liluo on 8/15/13.
//  Copyright (c) 2013 liluo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalcBrain : NSObject

- (void)pushOpreand:(double)operand;
- (double)performOperation:(NSString *)operation;

@end
