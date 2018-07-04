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

    ljLinkBase* ljj = [[ljLinkBase alloc]init];
    ljj.moveTo(CGPointMake(10, 20)).moveTo(CGPointMake(20, 40)).moveTo(CGPointMake(11, 33)).moveTo(CGPointMake(1, 2)).moveTo(CGPointMake(100, 200));
    ljj.moveTo(CGPointMake(10, 20)).moveTo(CGPointMake(20, 40)).moveTo(CGPointMake(11, 33)).moveTo(CGPointMake(1, 2)).moveTo(CGPointMake(100, 200));
    
    ljj.revertSteps(1).revert().revertSteps(2);
    

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
