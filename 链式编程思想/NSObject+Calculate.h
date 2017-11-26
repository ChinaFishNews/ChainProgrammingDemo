//
//  NSObject+Calculate.h
//  链式编程思想
//
//  Created by 新闻 on 2017/11/26.
//  Copyright © 2017年 新闻. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculateManager.h"

@interface NSObject (Calculate)

- (double)fn_calculate:(void(^)(CalculateManager * mgr))block;

@end
