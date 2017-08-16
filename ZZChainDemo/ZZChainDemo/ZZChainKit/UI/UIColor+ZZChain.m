//
//  UIColor+ZZChain.m
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import "UIColor+ZZChain.h"

@implementation UIColor (ZZChain)

+ (UIColor *(^)(void))red{
    return ^(){
        return [UIColor redColor];
    };
}

+ (UIColor *(^)(void))black{
    return ^(){
        return [UIColor blackColor];
    };
}

+ (UIColor *(^)(void))blue{
    return ^(){
        return [UIColor blueColor];
    };
}

+ (UIColor *(^)(void))gray{
    return ^(){
        return [UIColor grayColor];
    };
}

+ (UIColor *(^)(void))green{
    return ^(){
        return [UIColor greenColor];
    };
}

+ (UIColor *(^)(void))cyan{
    return ^(){
        return [UIColor cyanColor];
    };
}
+ (UIColor *(^)(void))magenta{
    return ^(){
        return [UIColor magentaColor];
    };
}
+ (UIColor *(^)(void))yellow{
    return ^(){
        return [UIColor yellowColor];
    };
}
+ (UIColor *(^)(void))clear{
    return ^(){
        return [UIColor clearColor];
    };
}

+ (UIColor *(^)(NSString *))zzHex{
    return ^(NSString *hex){
        return [UIColor colorWithHex:hex];
    };
}

+ (UIColor *(^)(CGFloat, CGFloat, CGFloat))zzRgb{
    return ^(CGFloat r, CGFloat g, CGFloat b){
        return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
    };
}

+ (UIColor *(^)(CGFloat))zzComRgb{
    return ^(CGFloat comRgb){
        return [UIColor colorWithRed:comRgb/255.0 green:comRgb/255.0 blue:comRgb/255.0 alpha:1];
    };
}

- (UIColor *(^)(CGFloat))zzAlpha{
    return ^(CGFloat alpha){
        CGFloat red = 0.0;
        CGFloat green = 0.0;
        CGFloat blue = 0.0;
        CGFloat alphaNum = 0.0;
        [self getRed:&red green:&green blue:&blue alpha:&alphaNum];
        return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    };
}

UIColor *ZZHexColor(NSString *hex) {
    return [UIColor colorWithHex:(hex)];
}


#pragma mark -- private
+ (UIColor *)colorWithHex:(NSString *)hex
{
    if (!hex || hex.length == 0) {
        return nil;
    }
    UIColor *color;
    NSString *fliter = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    fliter = [fliter stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *cString = fliter; //去掉空格换行符
    
    // String should be 6 or 8 characters
    if ([cString length] < 6 || cString.length > 8) return [self clearColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]){
        cString = [cString substringFromIndex:2];
    }
    else if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    else if([cString length] != 6) {
        return [self clearColor];
    }
    // Separate into r, g, b substrings
    NSRange range;
    range.length = 2;
    unsigned rgb[3];
    for (int i = 0; i < 3; i ++) {
        range.location = range.length * i;
        NSString *string = [cString substringWithRange:range];
        [[NSScanner scannerWithString:string] scanHexInt:&rgb[i]];
    }
    color = [UIColor colorWithRed:rgb[0]/255.0 green:rgb[1]/255.0 blue:rgb[2]/255.0 alpha:1];
    return color;
}

@end
