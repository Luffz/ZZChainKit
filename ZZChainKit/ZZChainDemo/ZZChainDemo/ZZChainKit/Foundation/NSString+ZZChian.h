//
//  NSString+ZZChian.h
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZZChian)

- (NSString *(^)(NSString *obj)) zzAdd;
- (NSString *(^)(NSString *obj,NSInteger offest)) zzInsert;
- (NSString *(^)(NSString*primordial, NSString*replace)) zzReplace;

- (NSArray *(^)(NSString *obj)) zzToArray;

@end
