//
//  UIView+ZZChian.m
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import "UIView+ZZChian.h"

@implementation UIView (ZZChian)

+ (UIView *(^)(void))zzNew{
    return ^(void){
        return [UIView new];
    };
}

- (UIView *(^)(CGFloat x,CGFloat y,CGFloat w,CGFloat h))zzFrame{
    return ^(CGFloat x,CGFloat y,CGFloat w,CGFloat h){
        CGRect rect = CGRectMake(x, y, w, h);
        self.frame = rect;
        return self;
    };
}


- (UIView *(^)(CGFloat))x{
    return ^(CGFloat x){
        CGRect rect = self.frame;
        rect.origin.x = x;
        self.frame = rect;
        return self;
    };
}


- (UIView *(^)(CGFloat))y{
    return ^(CGFloat y){
        CGRect rect = self.frame;
        rect.origin.y = y;
        self.frame = rect;
        return self;
    };
}

- (UIView *(^)(CGFloat))w{
    return ^(CGFloat w){
        CGRect rect = self.frame;
        rect.size.width = w;
        self.frame = rect;
        return self;
    };
}

- (UIView *(^)(CGFloat))h{
    return ^(CGFloat h){
        CGRect rect = self.frame;
        rect.size.height = h;
        self.frame = rect;
        return self;
    };
}

- (UIView *(^)(CGFloat x,CGFloat y))zzOrigin{
    return ^(CGFloat x,CGFloat y){
        CGRect rect = self.frame;
        rect.origin = CGPointMake(x, y);
        self.frame = rect;
        return self;
    };
}

- (UIView *(^)(CGFloat w,CGFloat h))zzSize{
    return ^(CGFloat w,CGFloat h){
        CGRect rect = self.frame;
        rect.size = CGSizeMake(w, h);
        self.frame = rect;
        return self;
    };
}

- (UIView *(^)(CGPoint))zzCenter{
    return ^(CGPoint center){
        self.center = center;
        return self;
    };
}

- (UIView *(^)(UIColor *))zzBgColor{
    return ^(UIColor *bgColor){
        self.backgroundColor = bgColor;
        return self;
    };
    
}

- (UIView *(^)(CGFloat))zzCornerRadius{
    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (UIView *(^)(CGFloat))zzBorderWidth{
    return ^(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

- (UIView *(^)(UIColor *))zzBorderColor{
    return ^(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (UIView *(^)(UIView *))zzInToView{
    return ^(UIView *superView){
        [superView addSubview:self];
        return self;
    };
}


- (UILabel *(^)())zzUILabel{
    return ^(){
        UILabel *obj = [UILabel new];
        if ([self isMemberOfClass:[UILabel class]]) {
            return (UILabel *)self;
        }else{
            return obj;
        }
    };
}

- (UIButton *(^)())zzUIButton{
    return ^(){
        UIButton *obj = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        if ([self isMemberOfClass:[UIButton class]]) {
            return (UIButton *)self;
        }else{
            return obj;
        }
    };
}

- (UIImageView *(^)())zzUIImageView{
    return ^(){
        UIImageView *obj = [UIImageView new];
        if ([self isMemberOfClass:[UIImageView class]]) {
            return (UIImageView *)self;
        }else{
            return obj;
        }
    };
}

- (UITextField *(^)())zzUITextField{
    return ^(){
        UITextField *obj = [UITextField new];
        if ([self isMemberOfClass:[UITextField class]]) {
            return (UITextField *)self;
        }else{
            return obj;
        }
    };
}

- (UITextView *(^)())zzUITextView{
    return ^(){
        UITextView *obj = [UITextView new];
        if ([self isMemberOfClass:[UITextView class]]) {
            return (UITextView *)self;
        }else{
            return obj;
        }
    };
}


@end
