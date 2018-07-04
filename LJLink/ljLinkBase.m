//
//  ljLinkBase.m
//  LJLink
//
//  Created by taoning on 2018/6/29.
//  Copyright © 2018年 taoning. All rights reserved.
//

#import "ljLinkBase.h"
@interface ljLinkBase ()
@property (nonatomic,strong)NSMutableArray* oldStack;
@end
@implementation ljLinkBase
- (ljLinkBase*)init{
    if(self = [super init]){
        self.oldStack = [NSMutableArray arrayWithObject:[NSValue valueWithPoint:CGPointMake(0, 0)]];
    }
    return self;
}
- (ljLinkBase *(^)(CGPoint))moveTo {
    return ^ (CGPoint pt) {
        self.center = pt;
       // NSLog(@"移动到 %f %f", self.center.x,self.center.y);
        [self.oldStack addObject:[NSValue valueWithPoint:(pt)]];
       // NSLog(self.oldStack.description);
        return self;
    };
}
- (ljLinkBase * (^)())revert{
    return ^(){
        if(self.oldStack.count >= 2){
            self.center = [[self.oldStack objectAtIndex:(self.oldStack.count-2)] pointValue];
           // NSLog(@"恢复到 %f %f", self.center.x,self.center.y);

            [self.oldStack removeLastObject];

        }else{
            NSLog(@"不能再后退了！");
        }
        NSLog(self.oldStack.description);

        return self;
    };
    
}
- (ljLinkBase * (^)(int ))revertSteps{
    return ^(int step){
        if(self.oldStack.count >= step+1 && step != -1){
            self.center = [[self.oldStack objectAtIndex:(self.oldStack.count-step-1)] pointValue];
          //  NSLog(@"恢复到 %f %f", self.center.x,self.center.y);
            
            [self.oldStack removeObjectsInRange:NSMakeRange(self.oldStack.count-step, step)];
        }else{
            self.center = [[self.oldStack firstObject] pointValue];
            [self.oldStack removeObjectsInRange:NSMakeRange(1, self.oldStack.count-1)];
           // NSLog(@"恢复到 %f %f", self.center.x,self.center.y);
        }
       // NSLog(self.oldStack.description);

        return self;
    };
    
}
@end
