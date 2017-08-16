//
//  UITextField+ZZChain.h
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/16.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (ZZChain)

+ (UITextField *(^)(void))zzNew;

- (UITextField *(^)(NSString *))zzText;//设置文本
- (UITextField *(^)(UIFont *))zzFont;//设置字体
- (UITextField *(^)(NSInteger ))zzFontNum;//系统字体 设置字体大小
- (UITextField *(^)(UIColor *))zzTextColor;//文本颜色
- (UITextField *(^)(NSTextAlignment))zzAlignment;//文本排列模式
- (UITextField *(^)(NSAttributedString *))zzAttributedText;//富文本

- (UITextField *(^)(UITextBorderStyle))zzBorderStyle;
- (UITextField *(^)(NSString *))zzPlaceholder;
- (UITextField *(^)(UITextFieldViewMode ))zzClearButtonMode;
- (UITextField *(^)(UIView *))zzLeftView;
- (UITextField *(^)(UITextFieldViewMode ))zzLeftViewMode;
- (UITextField *(^)(UIView *))zzRightView;
- (UITextField *(^)(UITextFieldViewMode ))zzRightViewMode;

- (UITextField *(^)(UIReturnKeyType ))zzReturnKeyType;
- (UITextField *(^)(UIKeyboardType ))zzKeyboardType;
- (UITextField *(^)(BOOL ))zzSecure;


@end
