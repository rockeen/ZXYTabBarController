//
//  ZXYBtn.m
//  ZXYTabBarModel
//
//  Created by Rockeen on 15/11/18.
//  Copyright (c) 2015年 Rockeen. All rights reserved.
//

#import "ZXYBtn.h"

@implementation ZXYBtn

/**
 *btn的初始化方法
 */
-(id)initWithFrame:(CGRect)frame tabbarItem:(UITabBarItem *)item
{
    _item=item;
    self = [super initWithFrame:frame];
    if (self) {
    [self initView:item];
    }
    return self;
}

-(void)initView:(UITabBarItem *)item
{
    //添加btn中的图片控件
    CGFloat imgVX=(self.frame.size.width-50)/2;
    CGFloat imgVY=3;
    CGFloat imgVW=50;
    CGFloat imgVH=30;
    
    _imgV = [[UIImageView alloc] initWithFrame:CGRectMake(imgVX, imgVY, imgVW, imgVH)];

    //设置imgV的image属性  数据来源于传入的item参数
    _imgV.image = item.image;

    //添加btn中的label控件
    CGFloat labelX=(self.frame.size.width-50)/2;
    CGFloat labelY=35;
    CGFloat labelW=50;
    CGFloat labelH=10;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(labelX, labelY, labelW, labelH)];
    
    //设置text文本
    label.text = item.title;
    
    //设置文本居中
    label.textAlignment = NSTextAlignmentCenter;
    
    //设置文本颜色
    label.backgroundColor = [UIColor clearColor];
    
    //设置字体大小
    label.font = [UIFont systemFontOfSize:12];
    
    //设置字体颜色
    label.textColor = [UIColor redColor];
    
    //判断数据中是否存在title
    if (item.title) {
        //如果title存 则都添加
        [self addSubview:_imgV];
        [self addSubview:label];
    }
    else
    {
        //如果title 不存在 则图片占据全部btn空间
        _imgV.frame = CGRectMake((self.frame.size.width-50)/2, 3, 50, 42);
        
        //添加imgv控件
        [self addSubview:_imgV];
    }
    
}


@end
