//
//  ViewController.h
//  LJLink
//
//  Created by taoning on 2018/6/29.
//  Copyright © 2018年 taoning. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ljLinkBase.h"
#import <ReactiveObjC.h>
@interface ViewController : NSViewController

@property (nonatomic,strong)ljLinkBase* linkBase;
@property (nonatomic,assign)int size;
@property (nonatomic,strong)NSString* name;

@end

