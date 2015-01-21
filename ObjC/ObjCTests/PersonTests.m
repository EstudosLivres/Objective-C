//
//  PersonTests.m
//  ObjC
//
//  Created by Ilton  Garcia on 21/01/15.
//  Copyright (c) 2015 EstudosLivres. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTests : XCTestCase

@end

@implementation PersonTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

-(void) testAge {
    Person *person = [[Person alloc] initWith: @"02165011157" name:@"Ilton Garcia" birthdate:@"22/08/1992"];
    XCTAssertTrue([person age] == 23);
}

@end
