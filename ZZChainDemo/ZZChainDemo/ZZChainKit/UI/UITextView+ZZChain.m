//
//  UITextView+ZZChain.m
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/16.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import "UITextView+ZZChain.h"

@implementation UITextView (ZZChain)

+ (UITextView *(^)(void))zzNew{
    return ^(void){
        return [UITextView new];
    };
}

- (UITextView *(^)(NSString *))zzText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextView *(^)(UIFont *))zzFont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UITextView *(^)(NSInteger))zzFontNum{
    return ^(NSInteger fontNum){
        self.font = [UIFont systemFontOfSize:fontNum];
        return self;
    };
}

- (UITextView *(^)(UIColor *))zzTextColor{
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}


- (UITextView *(^)(NSTextAlignment))zzAlignment{
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
    
}


- (UITextView *(^)(NSAttributedString *))zzAttributedText{
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

- (UITextView *(^)(id))zzDelegate{
    return ^(id obj){
        self.delegate = obj;
        return self;
    };
}

@end
