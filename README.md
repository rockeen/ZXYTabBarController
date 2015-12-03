# ZXYTabBarController
直接拖入工程中，耦合度较低。    
用法：    
用系统提供的tabBarItem属性
另外还有三个个接口：    

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

效果：    
![](https://github.com/rockeen/ZXYTabBarController/raw/master/ZXYTabBarController.Demo/Untitled.gif) 
