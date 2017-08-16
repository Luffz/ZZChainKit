//
//  UIColor+ZZChain.h
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ZZChain)

FOUNDATION_EXPORT UIColor *ZZHexColor(NSString *hex);

+ (UIColor *(^)(void))red;
+ (UIColor *(^)(void))black;
+ (UIColor *(^)(void))blue;
+ (UIColor *(^)(void))gray;
+ (UIColor *(^)(void))green;
+ (UIColor *(^)(void))cyan;
+ (UIColor *(^)(void))magenta;
+ (UIColor *(^)(void))yellow;
+ (UIColor *(^)(void))clear;
+ (UIColor *(^)(NSString *))zzHex;
+ (UIColor *(^)(CGFloat r,CGFloat g,CGFloat b))zzRgb;
+ (UIColor *(^)(CGFloat com))zzComRgb;

- (UIColor *(^)(CGFloat alpha))zzAlpha;

@end
