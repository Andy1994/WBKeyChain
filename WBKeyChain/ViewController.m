//
//  ViewController.m
//  WBKeyChain
//
//  Created by 王文博 on 15/11/21.
//  Copyright © 2015年 王文博. All rights reserved.
//

#import "ViewController.h"
#import "WBUserDataManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [WBUserDataManager savePassWord:@"23333com"];
    NSLog(@"%@",[WBUserDataManager readPassWord]);
    
    //删除KeyChain
    //[WBUserDataManager deletePassWord];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
