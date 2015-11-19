# ZXYTabBarController

用法：
1.直接拖入工程中，耦合度较低。
2.导入ZXYTabBarController.h

tabbar的接口有 item，selectImage，imageView，selectCount。


   //设置页面视图控制器
    SetViewController *setVc=[[SetViewController alloc]init];
    UINavigationController *setNc=[[UINavigationController alloc]initWithRootViewController:setVc];
    setVc.view.backgroundColor=[UIColor grayColor];
    setVc.tabBarItem.image=[UIImage imageNamed:@"home_tab_icon_5@2x"];
    
    

 效果图  
![id](http://i5.tietuku.com/d90670adaf025a04.gif)
