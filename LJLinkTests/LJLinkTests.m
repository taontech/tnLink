//
//  LJLinkTests.m
//  LJLinkTests
//
//  Created by taoning on 2018/7/5.
//  Copyright © 2018年 taoning. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ljLinkBase.h"
@interface LJLinkTests : XCTestCase

@end

@implementation LJLinkTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)test {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    ljLinkBase * linkBase = [[ljLinkBase alloc]init];
    
  
    linkBase.moveTo(CGPointMake(10, 20)).moveTo(CGPointMake(20, 40)).moveTo(CGPointMake(11, 33)).moveTo(CGPointMake(1, 2)).moveTo(CGPointMake(100, 200));
    linkBase.moveTo(CGPointMake(10, 20)).moveTo(CGPointMake(20, 40)).moveTo(CGPointMake(11, 33)).moveTo(CGPointMake(1, 2)).moveTo(CGPointMake(100, 200));
    
    linkBase.revertSteps(1).revert().revertSteps(2);
    [self checkCenter:linkBase];
}
-(void)checkCenter:(ljLinkBase*) lj
{
    XCTAssertEqual(lj.center.x, 10);
    XCTAssertEqual(lj.center.y, 20);
}
- (void)testReverts {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    ljLinkBase * linkBase = [[ljLinkBase alloc]init];
    
    
    linkBase.moveTo(CGPointMake(10, 20)).moveTo(CGPointMake(20, 40)).moveTo(CGPointMake(11, 33)).moveTo(CGPointMake(1, 2)).moveTo(CGPointMake(100, 200));
    linkBase.moveTo(CGPointMake(10, 20)).moveTo(CGPointMake(20, 40)).moveTo(CGPointMake(11, 33)).moveTo(CGPointMake(1, 2)).moveTo(CGPointMake(100, 200));
    
    linkBase.revertSteps(-2);
    [self checkRevets:linkBase];
}

-(void)checkRevets:(ljLinkBase*)lj
{
    XCTAssertTrue(lj.oldStack.count == 1);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
