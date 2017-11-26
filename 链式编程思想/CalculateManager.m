//
//  CalculateManager.m
//  链式编程思想
//
//  Created by 新闻 on 2017/11/26.
//  Copyright © 2017年 新闻. All rights reserved.
//

#import "CalculateManager.h"

@implementation CalculateManager

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static CalculateManager *mgr = nil;
    dispatch_once(&onceToken, ^{
        mgr = [[self alloc] init];
    });
    return mgr;
}

-(CalculateManager * (^)(float value))add{
    return ^(float value){
        _result += value;
        return self;
    };
}

-(CalculateManager *(^)(float value))minus {
    return ^(float value){
        _result -= value;
        return self;
    };
}

-(CalculateManager *(^)(float value))multi {
    return ^(float value){
        _result *= value;
        return self;
    };
}

-(CalculateManager *(^)(float value))divis {
    return ^(float value){
        _result /= value;
        return self;
    };
}

@end
