//
//  ViewController.m
//  数据结构算法
//
//  Created by 华融 on 2018/8/8.
//  Copyright © 2018年 ck. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"
#import "SubView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self numbersArray:@[@5,@10,@22,@33,@5] number:10];
    SuperView *superv = [[SuperView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    [self.view addSubview:superv];
    superv.backgroundColor = [UIColor redColor];
    
    SubView *bt = [SubView buttonWithType:UIButtonTypeCustom];
    bt.frame = CGRectMake(200, 20, 100, 30);
    bt.backgroundColor = [UIColor yellowColor];
    [superv addSubview:bt];
    [bt addTarget:self action:@selector(clickAction1:) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)clickAction1:(UIButton *)sender {
    
    NSLog(@"点击Loi");
}


- (IBAction)clickAction:(UIButton *)sender {
    NSLog(@"点击");
}


// 1 写一个方法 一个纯数字数组传入一个数字 判断数组中是否存在两两相加等于这个数的情况

- (BOOL)numbersArray:(NSArray *)numArray
              number:(NSInteger)number
{
    // 创建一个空的集合
    NSMutableSet *set = [NSMutableSet set];
 
    for (NSNumber *numberIndex in numArray) {
        
        if ([set containsObject:@(number -[numberIndex integerValue])]) {
            
            return YES;
        }
        [set addObject:numberIndex];
    }
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
