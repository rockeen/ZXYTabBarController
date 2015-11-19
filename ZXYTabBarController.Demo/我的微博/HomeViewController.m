//
//  HomeViewController.m
//  我的微博
//
//  Created by Rockeen on 15/11/11.
//  Copyright (c) 2015年 Rockeen. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self addButton];
    
    
    
    
}


- (void)addButton{
    
    //创建自定义的左侧buttton
    UIButton *leftButton =[[UIButton alloc]initWithFrame:CGRectMake(0, 0,120, 40)];
    //背景
    [leftButton setBackgroundImage:[UIImage imageNamed:@"button_title@2x"] forState:UIControlStateNormal];
    
    //图片和lable
    [leftButton setImage:[UIImage imageNamed:@"button_icon_group@2x"] forState:UIControlStateNormal];
    
    [leftButton setTitle:@"我的收藏" forState:UIControlStateNormal];
    
    //设置字体和偏移
    leftButton.titleLabel.font=[UIFont systemFontOfSize:14];
    [leftButton setTitleEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0)];
    
    UIBarButtonItem *leftbabtn=[[UIBarButtonItem alloc]initWithCustomView:leftButton];
    
    
    
    
    //创建自定义的右侧buttton
    UIButton *rightButton =[[UIButton alloc]initWithFrame:CGRectMake(0, 0,40, 40)];
    //背景
    [rightButton setBackgroundImage:[UIImage imageNamed:@"button_m"] forState:UIControlStateNormal];
    
    [rightButton setImage:[UIImage imageNamed:@"button_icon_plus@2x"] forState:UIControlStateNormal];
    
    UIBarButtonItem *rightbabtn=[[UIBarButtonItem alloc]initWithCustomView:rightButton];
    
    
    
    
    
    
    
    self.navigationItem.rightBarButtonItem=rightbabtn;
    
    self.navigationItem.leftBarButtonItem=leftbabtn;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
