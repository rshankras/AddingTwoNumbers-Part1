//
//  RSViewController.h
//  AddingTwoNumbers
//
//  Created by Ravi Shankar on 14/04/14.
//  Copyright (c) 2014 Ravi Shankar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSViewController : UIViewController

@property (nonatomic,strong) IBOutlet UITextField *firstNumberTextField;
@property (nonatomic,strong) IBOutlet UITextField *secondNumberTextField;
@property (nonatomic,strong) IBOutlet UITextField *resultTextField;

@property (nonatomic,strong) IBOutlet UIButton *addButton;
@property (nonatomic,strong) IBOutlet UIButton *resetButton;

@end
