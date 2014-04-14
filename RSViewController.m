//
//  RSViewController.m
//  AddingTwoNumbers
//
//  Created by Ravi Shankar on 14/04/14.
//  Copyright (c) 2014 Ravi Shankar. All rights reserved.
//

#import "RSViewController.h"
#import "RSAddition.h"

@interface RSViewController ()

@end

@implementation RSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addNumbers:(id)sender {
    RSAddition *addition = [[RSAddition alloc] init];
    NSInteger result = [addition addNumberOne:[self.firstNumberTextField.text integerValue]  withNumberTwo:[self.secondNumberTextField.text integerValue]];
    self.resultTextField.text = [NSString stringWithFormat:@"%d",result];
}

-(IBAction)resetFields:(id)sender {
    self.firstNumberTextField.text = @"";
    self.secondNumberTextField.text = @"";
    self.resultTextField.text = @"";
}


@end
