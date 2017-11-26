//
//  ViewController.m
//  链式编程思想
//
//  Created by 新闻 on 2017/11/26.
//  Copyright © 2017年 新闻. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "NSObject+Calculate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.equalTo(@100).right.bottom.equalTo(@-100);
        make.left.top.equalTo(@100);
        make.right.bottom.equalTo(@-100);
    }];
    
    //链式编程思想特点:方法返回值必须要有方法调用者!!
    
    /**
     mas_makeConstraints执行流程:
     1.创建约束制造者MASConstraintMaker,并且绑定控件,生成一个保存所有约束的数组
     2.执行mas_makeConstraints传入的Block
     3.让约束制造者安装约束!
         * 1.清空之前的所有约束
         * 2.遍历约束数组,一个一个安装
     */
    
    double result = [self fn_calculate:^(CalculateManager *mgr) {
        mgr.add(10).add(10).divis(3).multi(5.8).minus(2.2);
    }];
    NSLog(@"result=%.2f", result);
        
}





@end
