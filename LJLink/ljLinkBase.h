//
//  ljLinkBase.h
//  LJLink
//
//  Created by taoning on 2018/6/29.
//  Copyright © 2018年 taoning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
@interface ljLinkBase : NSObject
@property (nonatomic,assign)NSPoint center;
// 返回的 block 可以接参数
- (ljLinkBase * (^)(NSPoint))moveTo;
- (ljLinkBase * (^)())revert;
- (ljLinkBase * (^)(int))revertSteps;

@end
