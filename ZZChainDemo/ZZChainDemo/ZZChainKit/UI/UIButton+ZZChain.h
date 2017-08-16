//
//  UIButton+ZZChain.h
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ZZChain)

+ (UIButton *(^)(UIButtonType))zzNew;

- (UIButton *(^)(NSString *))zzTitleNormal;
- (UIButton *(^)(NSString *))zzTitleHighlighted;
- (UIButton *(^)(NSString *))zzTitleSelected;
- (UIButton *(^)(NSString *,UIControlState))zzTitleState;

- (UIButton *(^)(UIColor *))zzTitleColorNormal;
- (UIButton *(^)(UIColor *))zzTitleColorHighlighted;
- (UIButton *(^)(UIColor *))zzTitleColorSelected;
- (UIButton *(^)(UIColor *,UIControlState))zzTitleColorState;

- (UIButton *(^)(NSString *))zzIamgeNormal;
- (UIButton *(^)(NSString *))zzIamgeHighlighted;
- (UIButton *(^)(NSString *))zzIamgeSelected;
- (UIButton *(^)(NSString *,UIControlState))zzImageState;

- (UIButton *(^)(NSString *))zzBgIamgeNormal;
- (UIButton *(^)(NSString *))zzBgIamgeHighlighted;
- (UIButton *(^)(NSString *))zzBgIamgeSelected;
- (UIButton *(^)(NSString *,UIControlState))zzBgImageState;

- (UIButton *(^)(NSAttributedString *))zzAttributedTitleNormal;
- (UIButton *(^)(NSAttributedString *))zzAttributedTitleHighlighted;
- (UIButton *(^)(NSAttributedString *))zzAttributedTitleSelected;
- (UIButton *(^)(NSAttributedString *,UIControlState))zzAttributedTitleState;

- (UIButton *(^)(UIFont *))zzFont;//设置字体
- (UIButton *(^)(NSInteger ))zzFontNum;//系统字体 设置字体大小

- (UIButton *(^)(CGFloat,CGFloat,CGFloat,CGFloat))zzContentEdgeInsets;
- (UIButton *(^)(CGFloat,CGFloat,CGFloat,CGFloat))imageEdgeInsets;

@end
