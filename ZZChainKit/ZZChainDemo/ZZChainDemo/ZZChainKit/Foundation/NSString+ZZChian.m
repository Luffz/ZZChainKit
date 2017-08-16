//
//  NSString+ZZChian.m
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import "NSString+ZZChian.h"

@implementation NSString (ZZChian)

- (NSString * (^)(NSString *obj)) zzAdd{
    return ^(id obj) {
        return [self stringByAppendingString:obj];
    };
}

- (NSString *(^)(NSString *obj, NSInteger))zzInsert{
    return ^(id obj,NSInteger offest){
        NSMutableString* str = [[NSMutableString alloc]initWithString:self];
        offest = offest<str.length?offest:str.length;
        [str insertString:obj atIndex:offest];
        return str;
    };
}

- (NSString *(^)(NSString*primordial, NSString*replace))zzReplace{
    return ^(NSString *primordial,NSString *replace){
        return [self stringByReplacingOccurrencesOfString:replace withString:primordial];
    };
}

- (NSArray *(^)(NSString *obj)) zzToArray{
    return ^(NSString *obj){
        return [self componentsSeparatedByString:obj];
    };
}

@end
