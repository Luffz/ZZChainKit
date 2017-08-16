//
//  UITextField+ZZChain.m
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/16.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import "UITextField+ZZChain.h"

@implementation UITextField (ZZChain)

+ (UITextField *(^)(void))zzNew{
    return ^(void){
        return [UITextField new];
    };
}

- (UITextField *(^)(NSString *))zzText{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextField *(^)(UIFont *))zzFont{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}

- (UITextField *(^)(NSInteger))zzFontNum{
    return ^(NSInteger fontNum){
        self.font = [UIFont systemFontOfSize:fontNum];
        return self;
    };
}

- (UITextField *(^)(UIColor *))zzTextColor{
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}


- (UITextField *(^)(NSTextAlignment))zzAlignment{
    return ^(NSTextAlignment alignment){
        self.textAlignment = alignment;
        return self;
    };
    
}


- (UITextField *(^)(NSAttributedString *))zzAttributedText{
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}

- (UITextField *(^)(UITextBorderStyle))zzBorderStyle{
    return ^(UITextBorderStyle zzBorderStyle){
        self.borderStyle = zzBorderStyle;
        return self;
    };
}

- (UITextField *(^)(NSString *))zzPlaceholder{
    return ^(NSString *obj){
        self.placeholder = obj;
        return self;
    };
}
- (UITextField *(^)(UITextFieldViewMode))zzClearButtonMode{
    return ^(UITextFieldViewMode obj){
        self.clearButtonMode = obj;
        return self;
    };
}

- (UITextField *(^)(UIView *))zzLeftView{
    return ^(UIView *obj){
        self.leftView = obj;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))zzLeftViewMode{
    return ^(UITextFieldViewMode obj){
        self.leftViewMode = obj;
        return self;
    };
}
- (UITextField *(^)(UIView *))zzRightView{
    return ^(UIView *obj){
        self.rightView = obj;
        return self;
    };
}

- (UITextField *(^)(UITextFieldViewMode))zzRightViewMode{
    return ^(UITextFieldViewMode obj){
        self.rightViewMode = obj;
        return self;
    };
}

- (UITextField *(^)(UIReturnKeyType))zzReturnKeyType{
    return ^(UIReturnKeyType obj){
        self.returnKeyType = obj;
        return self;
    };
}

- (UITextField *(^)(UIKeyboardType))zzKeyboardType{
    return ^(UIKeyboardType obj){
        self.keyboardType = obj;
        return self;
    };
}

- (UITextField *(^)(BOOL))zzSecure{
    return ^(BOOL obj){
        self.secureTextEntry = obj;
        return self;
    };
}

@end
