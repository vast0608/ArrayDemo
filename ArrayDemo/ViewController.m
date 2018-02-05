//
//  ViewController.m
//  ArrayDemo
//
//  Created by 李晓璐 on 2018/2/5.
//  Copyright © 2018年 onmmc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray* array = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        CGFloat num = arc4random() % 100 + 1;
        [array addObject:[NSNumber numberWithFloat:num]];
    }
    CGFloat maxValue = [[array valueForKeyPath:@"@max.floatValue"] floatValue];
    CGFloat minValue = [[array valueForKeyPath:@"@min.floatValue"] floatValue];
    
    NSLog(@"%f\n%f",maxValue,minValue);
    /*
     @”@max.floatValue”（获取最大值），
     @”@min.floatValue”（获取最小值），
     @”@avg.floatValue” (获取平均值)，
     @”@count.floatValue”(获取数组大小)
     */
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
