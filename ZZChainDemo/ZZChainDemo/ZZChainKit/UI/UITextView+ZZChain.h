//
//  UITextView+ZZChain.h
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/16.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (ZZChain)

+ (UITextView *(^)(void))zzNew;

- (UITextView *(^)(NSString *))zzText;//设置文本
- (UITextView *(^)(UIFont *))zzFont;//设置字体
- (UITextView *(^)(NSInteger ))zzFontNum;//系统字体 设置字体大小
- (UITextView *(^)(UIColor *))zzTextColor;//文本颜色
- (UITextView *(^)(NSTextAlignment))zzAlignment;//文本排列模式
- (UITextView *(^)(NSAttributedString *))zzAttributedText;//富文本


@end
