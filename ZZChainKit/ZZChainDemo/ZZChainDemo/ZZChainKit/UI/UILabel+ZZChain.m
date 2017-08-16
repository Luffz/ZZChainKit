//
//  UILabel+ZZChain.m
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import "UILabel+ZZChain.h"

@implementation UILabel (ZZChain)

+ (UILabel *(^)(void))zzNew{
    return ^(void){
        return [UILabel new];
    };
}

- (UILabel *(^)(NSString *))zzText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIFont *))zzFont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UILabel *(^)(NSInteger))zzFontNum{
    return ^(NSInteger fontNum){
        self.font = [UIFont systemFontOfSize:fontNum];
        return self;
    };
}

- (UILabel *(^)(UIColor *))zzTextColor{
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}


- (UILabel *(^)(NSTextAlignment))zzAlignment{
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
    
}

- (UILabel *(^)(NSInteger))zzNumberOfLines{
    return ^(NSInteger numberOfLines){
        self.numberOfLines = numberOfLines;
        return self;
    };
}


- (UILabel *(^)(NSAttributedString *))zzAttributedText{
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
    
}

- (UILabel *(^)(UIColor *))zzShadowColor{
    return ^(UIColor *shadowColor){
        self.shadowColor = shadowColor;
        return self;
    };
    
}

- (UILabel *(^)(CGSize))zzShadowOffset{
    return ^(CGSize shadowOffset){
        self.shadowOffset = shadowOffset;
        return self;
    };
    
}

- (UILabel *(^)(void))zzSizeToFit{
    return ^(void){
        [self sizeToFit];
        return self;
    };
}


@end
