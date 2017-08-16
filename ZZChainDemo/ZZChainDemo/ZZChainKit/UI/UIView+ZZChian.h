//
//  UIView+ZZChian.h
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZZChian)

+ (UIView *(^)(void))zzNew;
- (UIView *(^)(UIColor *))zzBgColor;
- (UIView *(^)(CGFloat x,CGFloat y,CGFloat w,CGFloat h))zzFrame;

- (UIView *(^)(CGFloat))x;
- (UIView *(^)(CGFloat))y;
- (UIView *(^)(CGFloat))w;
- (UIView *(^)(CGFloat))h;
- (UIView *(^)(CGFloat x,CGFloat y))zzOrigin;
- (UIView *(^)(CGFloat w,CGFloat h))zzSize;
- (UIView *(^)(CGPoint))zzCenter;

- (UIView *(^)(CGFloat))zzCornerRadius;
- (UIView *(^)(UIColor *))zzBorderColor;
- (UIView *(^)(CGFloat))zzBorderWidth;

- (UIView *(^)(UIView *))zzInToView;

//使用其他组件链式语法的时候 请先转换
- (UILabel *(^)())zzUILabel;
- (UIImageView *(^)())zzUIImageView;
- (UITextField *(^)())zzUITextField;
- (UITextView *(^)())zzUITextView;
- (UIButton *(^)())zzUIButton;

@end
