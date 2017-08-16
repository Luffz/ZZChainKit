//
//  UIImageView+ZZChain.h
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (ZZChain)

+ (UIImageView *(^)(void))zzNew;

- (UIImageView *(^)(NSString *imageName))zzImageName;

@end
