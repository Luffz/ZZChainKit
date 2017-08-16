//
//  UILabel+ZZChain.h
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ZZChain)

+ (UILabel *(^)(void))zzNew;
- (UILabel *(^)(NSString *))zzText;//设置文本
- (UILabel *(^)(UIFont *))zzFont;//设置字体
- (UILabel *(^)(NSInteger ))zzFontNum;//系统字体 设置字体大小
- (UILabel *(^)(UIColor *))zzTextColor;//文本颜色
- (UILabel *(^)(NSTextAlignment))zzAlignment;//文本排列模式
- (UILabel *(^)(NSAttributedString *))zzAttributedText;//富文本
- (UILabel *(^)(NSInteger))zzNumberOfLines;//行数
- (UILabel *(^)(UIColor *))zzShadowColor;//阴影颜色
- (UILabel *(^)(CGSize))zzShadowOffset;//阴影偏移量
- (UILabel *(^)(void))zzSizeToFit;//

@end
