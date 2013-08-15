//
//  ViewController.h
//  Calc
//
//  Created by liluo on 8/15/13.
//  Copyright (c) 2013 liluo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;
- (IBAction)digitPressed:(id)sender;
- (IBAction)operationPressed:(id)sender;

@end
