//
//  ViewController.m
//  LJLink
//
//  Created by taoning on 2018/6/29.
//  Copyright © 2018年 taoning. All rights reserved.
//

#import "ViewController.h"
#import "ljLinkBase.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    
    [[RACObserve(self, name)
      filter:^(NSString *newName) {
          return [newName hasPrefix:@"j"];
      }]
     subscribeNext:^(NSString *newName) {
         NSLog(@"2222%@", newName);
     }];
    
    self.linkBase = [[ljLinkBase alloc]init];
    
    [RACObserve(self, linkBase.center) subscribeNext:^(id newName) {
        NSLog(@"设置了新的点：x-%f,y-%f", [newName pointValue].x,[newName pointValue].x);
    }];
    self.linkBase.moveTo(CGPointMake(10, 20)).moveTo(CGPointMake(20, 40)).moveTo(CGPointMake(11, 33)).moveTo(CGPointMake(1, 2)).moveTo(CGPointMake(100, 200));
    self.linkBase.moveTo(CGPointMake(10, 20)).moveTo(CGPointMake(20, 40)).moveTo(CGPointMake(11, 33)).moveTo(CGPointMake(1, 2)).moveTo(CGPointMake(100, 200));
    
    self.linkBase.revertSteps(1).revert().revertSteps(2);
    
    self.name = @"test";
    self.name = @"xxx";
    self.name = @"jack";
    self.size = 10;
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
