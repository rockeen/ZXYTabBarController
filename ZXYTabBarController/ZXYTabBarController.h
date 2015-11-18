//
//  ZXYTabBarController.h
//  ZXYTabBarModel
//
//  Created by Rockeen on 15/11/18.
//  Copyright (c) 2015年 Rockeen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXYTabBarController : UITabBarController

/**
 *tabbar上跟随者点击跑的图片
 */
@property (nonatomic, strong) UIImage *selectedImage;

/**
 * 默认第几个button为选中状态
 */
@property (nonatomic, assign) NSInteger selectCount;

/**
 *tabbar上的背景图片
 */
@property (nonatomic, strong) UIImage *tabbarImage;

@end
