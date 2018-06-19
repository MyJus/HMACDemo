//
//  ViewController.m
//  HMACDemo
//
//  Created by peony on 2017/2/13.
//  Copyright © 2017年 peony. All rights reserved.
//  HMAC示例

#import "ViewController.h"

#import "LJHMAC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    /*
     实际应用中HMAC的key从服务器获取,然后本地存储，也不会每次进入、启动等时候进行请求替换key，只会在一些特殊情况下才会替换
     */
    
    NSString *data = @"LJJV587";
    NSString *key = @"beautiful";
    NSString *ss = [LJHMAC LJHMACMD5:data key:key];
    NSLog(@"------------%@",ss);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
