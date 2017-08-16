//
//  UIButton+ZZChain.m
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import "UIButton+ZZChain.h"

@implementation UIButton (ZZChain)

+ (UIButton *(^)(UIButtonType))zzNew{
    return ^(UIButtonType type){
        return [UIButton buttonWithType:type];
    };
}

//标题
- (UIButton *(^)(NSString *))zzTitleNormal{
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSString *))zzTitleHighlighted{
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(NSString *))zzTitleSelected{
    return ^(NSString *title){
        [self setTitle:title forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(NSString *, UIControlState))zzTitleState{
    return ^(NSString *title,UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}
//标题颜色
- (UIButton *(^)(UIColor *))zzTitleColorNormal{
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIColor *))zzTitleColorHighlighted{
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(UIColor *))zzTitleColorSelected{
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))zzTitleColorState{
    return ^(UIColor *color,UIControlState state){
        [self setTitleColor:color forState:state];
        return self;
    };
}

//图片
- (UIButton *(^)(NSString *))zzIamgeNormal{
    return ^(NSString *name){
        [self setImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSString *))zzIamgeHighlighted{
    return ^(NSString *name){
        [self setImage:[UIImage imageNamed:name] forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(NSString *))zzIamgeSelected{
    return ^(NSString *name){
        [self setImage:[UIImage imageNamed:name] forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(NSString *, UIControlState))zzImageState{
    return ^(NSString *name,UIControlState state){
        [self setImage:[UIImage imageNamed:name] forState:state];
        return self;
    };
}
//背景图片
- (UIButton *(^)(NSString *))zzBgIamgeNormal{
    return ^(NSString *name){
        [self setImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSString *))zzBgIamgeHighlighted{
    return ^(NSString *name){
        [self setImage:[UIImage imageNamed:name] forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(NSString *))zzBgIamgeSelected{
    return ^(NSString *name){
        [self setImage:[UIImage imageNamed:name] forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(NSString *, UIControlState))zzBgImageState{
    return ^(NSString *name,UIControlState state){
        [self setImage:[UIImage imageNamed:name] forState:state];
        return self;
    };
}
//富文本
- (UIButton *(^)(NSAttributedString *))zzAttributedTitleNormal{
    return ^(NSAttributedString *title){
        [self setAttributedTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *))zzAttributedTitleHighlighted{
    return ^(NSAttributedString *title){
        [self setAttributedTitle:title forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *))zzAttributedTitleSelected{
    return ^(NSAttributedString *title){
        [self setAttributedTitle:title forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *,UIControlState))zzAttributedTitleState{
    return ^(NSAttributedString *title,UIControlState state){
        [self setAttributedTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIFont *))zzFont{
    return ^(UIFont *font){
        self.titleLabel.font = font;
        return self;
    };
}

- (UIButton *(^)(NSInteger))zzFontNum{
    return ^(NSInteger fontNum){
        self.titleLabel.font = [UIFont systemFontOfSize:fontNum];
        return self;
    };
}

- (UIButton *(^)(CGFloat,CGFloat,CGFloat,CGFloat))zzContentEdgeInsets{
    return ^(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right){
        self.contentEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}

- (UIButton *(^)(CGFloat,CGFloat,CGFloat,CGFloat))imageEdgeInsets{
    return ^(CGFloat top,CGFloat left,CGFloat bottom,CGFloat right){
        self.imageEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
        return self;
    };
}


@end
