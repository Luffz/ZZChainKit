//
//  UIImageView+ZZChain.m
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import "UIImageView+ZZChain.h"

@implementation UIImageView (ZZChain)

+ (UIImageView *(^)(void))zzNew{
    return ^(void){
        return [UIImageView new];
    };
}

- (UIImageView *(^)(NSString *))zzImageName{
    return ^(NSString *imageName){
        self.image = [UIImage imageNamed:imageName];
        return self;
    };
}

@end
