//
//  AppDelegate.m
//  我的微博
//
//  Created by Rockeen on 15/11/11.
//  Copyright (c) 2015年 Rockeen. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "MassageViewController.h"
#import "PersonViewController.h"
#import "SetViewController.h"
#import "ItemViewController.h"
#import "ZXYTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//设置窗口
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
//创建子视图控制器
    
    //主页面视图控制器
    HomeViewController *homeVc=[[HomeViewController alloc]init];
    UINavigationController *hNc=[[UINavigationController alloc]initWithRootViewController:homeVc];

    
    homeVc.view.backgroundColor=[UIColor orangeColor];
    homeVc.tabBarItem.image=[UIImage imageNamed:@"home_tab_icon_1@2x"];
    
    
    //信息页面视图控制器
    MassageViewController *massageVc=[[MassageViewController alloc]init];
    UINavigationController *massageNc=[[ UINavigationController alloc]initWithRootViewController:massageVc];
    massageVc.view.backgroundColor=[UIColor yellowColor];
    massageVc.tabBarItem.image=[UIImage imageNamed:@"home_tab_icon_2@2x"];
    
    //个人页面视图控制器
    PersonViewController *personVc=[[PersonViewController alloc]init];
    UINavigationController *personNc=[[UINavigationController alloc]initWithRootViewController:personVc];
    personVc.view.backgroundColor=[UIColor greenColor];
    personVc.tabBarItem.image=[UIImage imageNamed:@"home_tab_icon_4@2x"];

    UIViewController *uVc=[[UIViewController alloc]init];
    
    
    
    //设置页面视图控制器
    SetViewController *setVc=[[SetViewController alloc]init];
    UINavigationController *setNc=[[UINavigationController alloc]initWithRootViewController:setVc];
    setVc.view.backgroundColor=[UIColor grayColor];
    setVc.tabBarItem.image=[UIImage imageNamed:@"home_tab_icon_5@2x"];

    
   //创建自定义tabbar
    ZXYTabBarController *tabBar=[[ZXYTabBarController alloc]init];
    
//    tabBar.tabbarImage=[UIImage imageNamed:@"mask_navbar"];
    tabBar.tabbarView.image=[UIImage imageNamed:@"mask_navbar"];
    tabBar.selectCount=1;
    
    tabBar.viewControllers=@[hNc,massageNc,uVc,personNc,setNc];
    
    
    //设置主视图控制器
    self.window.rootViewController=tabBar;
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
