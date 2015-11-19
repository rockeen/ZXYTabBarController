//
//  SetViewController.m
//  我的微博
//
//  Created by Rockeen on 15/11/11.
//  Copyright (c) 2015年 Rockeen. All rights reserved.
//

#import "SetViewController.h"
#import "ItemViewController.h"
#define kScrenW [UIScreen mainScreen].bounds.size.width
#define kScrenH [UIScreen mainScreen].bounds.size.height

@interface SetViewController ()

@end

@implementation SetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //添加更多选择按钮
    [self moreChoseBtn];
    //添加登出按钮
    [self addUpButton];
    
    self.navigationItem.title=@"更多";
}

//添加更多选择按钮
- (void)moreChoseBtn{
    
    CGFloat space=20;
    
    UIButton *moreChoseBtn=[[UIButton alloc]initWithFrame:CGRectMake(space, 64+space, kScrenW-space*2, 50)];
    
    //背景颜色
    moreChoseBtn.backgroundColor=[UIColor colorWithRed:65/255.0 green:105/255.0 blue:225/255.0 alpha:1];
    [moreChoseBtn setTitle:@"主题选择" forState:UIControlStateNormal];
    
    moreChoseBtn.layer.cornerRadius=6;
    
    //偏移
    [moreChoseBtn setTitleEdgeInsets:UIEdgeInsetsMake(0, -150, 0, 0)];
    //点击事件
    [moreChoseBtn addTarget:self action:@selector(moreChoseBtnAct:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:moreChoseBtn];
    
    
}

//moreChoseBtnAct点击事件
- (void)moreChoseBtnAct:(UIButton *)button{

    
    ItemViewController *itemVc=[[ItemViewController alloc]init];
    
    //隐藏tabbar
//    self.hidesBottomBarWhenPushed=YES;
    
    //push到我的主题页面
    [self.navigationController pushViewController:itemVc animated:YES];

//     [itemVc returnView:^(UIImageView *view) {
//         nil;
//     }];

}

//添加登出按钮
- (void)addUpButton{



    CGFloat space=20;
    
    UIButton *UpButton=[[UIButton alloc]initWithFrame:CGRectMake(space, 64+2*space+50, kScrenW-space*2, 50)];
    
    //背景颜色
    
    [UpButton setTitle:@"登出当前账号" forState:UIControlStateNormal];
    
    //设置边框颜色和宽度
    [UpButton.layer setBorderWidth:1];
//    [UpButton.layer setBorderColor:[UIColor blackColor]];
    
    UpButton.layer.cornerRadius=6;
    
    //设置按钮的圆角半径不会被遮挡
    UpButton.layer.masksToBounds=YES;
    
    [self.view addSubview:UpButton];



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
