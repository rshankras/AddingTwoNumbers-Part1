//
//  AddingTwoNumbersTests.m
//  AddingTwoNumbersTests
//
//  Created by Ravi Shankar on 13/04/14.
//  Copyright (c) 2014 Ravi Shankar. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RSAddition.h"

@interface AddingTwoNumbersTests : XCTestCase

@end

@implementation AddingTwoNumbersTests
{
    RSAddition *addition;
}

- (void)setUp
{
    [super setUp];
     addition = [[RSAddition alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testAdditionClassExists {
    XCTAssertNotNil(addition, @"RSAddition class exists");
}

-(void)testAddTwoPlusTwo {
    NSInteger result = [addition addNumberOne:2 withNumberTwo:2];
    XCTAssertEqual(result, 4, @"Addition of 2 + 2 is 4");
}

-(void)testAddTwoPlusSeven {
    NSInteger result = [addition addNumberOne:2 withNumberTwo:7];
    XCTAssertEqual(result, 9, @"Addition of 2 + 7 is 9");
}


@end
