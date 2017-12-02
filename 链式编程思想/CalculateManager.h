//
//  CalculateManager.h
//  链式编程思想
//
//  Created by 新闻 on 2017/11/26.
//  Copyright © 2017年 新闻. All rights reserved.
//  计算管理类

#import <Foundation/Foundation.h>

@interface CalculateManager : NSObject

@property(assign,nonatomic)double result;

+ (instancetype)sharedInstance;

-(CalculateManager *(^)(float value))add;

-(CalculateManager *(^)(float value))minus;

-(CalculateManager *(^)(float value))multi;

-(CalculateManager *(^)(float value))divis;

- (instancetype)manager:(double(^)(double))block;

@end
