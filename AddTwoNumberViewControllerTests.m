//
//  AddTwoNumberViewControllerTests.m
//  AddingTwoNumbers
//
//  Created by Ravi Shankar on 14/04/14.
//  Copyright (c) 2014 Ravi Shankar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RSViewController.h"

@interface AddTwoNumberViewControllerTests : XCTestCase

@end

@implementation AddTwoNumberViewControllerTests
{
    RSViewController *viewController;
}

- (void)setUp
{
    [super setUp];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Storyboard" bundle:nil];
    viewController = [storyboard instantiateViewControllerWithIdentifier:
                                        @"RSViewController"];
    [viewController view];
}

- (void)tearDown
{
    [super tearDown];
}

-(void)testViewControllerViewExists {
    XCTAssertNotNil([viewController view], @"ViewController should contain a view");
}

-(void)testFirstNumberTextFieldConnection {
    XCTAssertNotNil([viewController firstNumberTextField], @"firstNumberTextField should be connected");
}

-(void)testSecondNumberTextFieldConnection {
    XCTAssertNotNil([viewController secondNumberTextField], @"secondNumberTextField should be connected");
}

-(void)testresultTextFieldConnection {
    XCTAssertNotNil([viewController resultTextField], @"resultTextField should be connected");
}

-(void)testAddButtonConnection {
    XCTAssertNotNil([viewController addButton], @"add button should be connected");
}

-(void)testAddButtonCheckIBAction {
    
    NSArray *actions = [viewController.addButton actionsForTarget:viewController
                                         forControlEvent:UIControlEventTouchUpInside];
    XCTAssertTrue([actions containsObject:@"addNumbers:"], @"");
}

-(void)testAddingTenPlusTwentyShouldBeThirty {
    viewController.firstNumberTextField.text = @"10";
    viewController.secondNumberTextField.text = @"20";
    [viewController.addButton sendActionsForControlEvents: UIControlEventTouchUpInside];
    viewController.resultTextField.text = @"30";
}

-(void)testResetButtonConnection {
    XCTAssertNotNil([viewController resetButton], @"reset button should be connected");
}

-(void)testResetButtonCheckIBAction {
    NSArray *actions = [viewController.resetButton actionsForTarget:viewController
                                                  forControlEvent:UIControlEventTouchUpInside];
    XCTAssertTrue([actions containsObject:@"resetFields:"], @"");
}

-(void)testResetButtonShouldClearFields {
    viewController.firstNumberTextField.text = @"10";
    viewController.secondNumberTextField.text = @"20";
    viewController.resultTextField.text = @"30";
    [viewController.resetButton sendActionsForControlEvents: UIControlEventTouchUpInside];
    XCTAssertEqualObjects(viewController.firstNumberTextField.text, @"", @"FirstNumber textfield should be empty");
    XCTAssertEqualObjects(viewController.secondNumberTextField.text, @"", @"SecondNumber textfield should be empty");
    XCTAssertEqualObjects(viewController.resultTextField.text, @"", @"Result textfield should be empty");
}


@end
