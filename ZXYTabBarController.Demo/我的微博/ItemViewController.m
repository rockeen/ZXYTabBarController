//
//  ItemViewController.m
//  我的微博
//
//  Created by Rockeen on 15/11/11.
//  Copyright (c) 2015年 Rockeen. All rights reserved.
//

#import "ItemViewController.h"
#import "ZXYTabBarController/ZXYTabBarController.h"

#define kScrenW [UIScreen mainScreen].bounds.size.width
#define kScrenH [UIScreen mainScreen].bounds.size.height


@interface ItemViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>{

    UICollectionView *_collectionView;
    
//    UIImageView *Item;
    
}

@end

static NSString *identifier = @"cell";
int num=1;
NSInteger a=0;
CGFloat space=20;
CGFloat headH=170;
int selectV=1;


static NSString *header = @"header";

@implementation ItemViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    [self addCollectionView];
    
    [self addNivButton];
  
    
}


//视图将要显示时
- (void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:YES];
    self.tabBarController.tabBar.hidden=YES;
    
    //navigationBar的背景视图
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"backcolor"] forBarMetrics:UIBarMetricsDefault];
    
//    [collectionView reloadData];
    
    //加图片
    [self addCollectionView];
    
    

}


//试图将要销毁时
- (void)viewWillDisappear:(BOOL)animated{


   //显示tabbar
    [super viewWillDisappear:YES];
    self.tabBarController.tabBar.hidden=NO;
    
    
    
    
    //navigationBar的背景视图设置为空
    [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];


}



//创建uicollectionView

- (void)addCollectionView{


 //创建布局
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc]init];
    
    
    //单元格大小
    layout.itemSize=CGSizeMake((kScrenW-space*3)/2, (kScrenH-64-headH-5*space)/4);
    
    //竖直方向滚动
    layout.scrollDirection=UICollectionViewScrollDirectionVertical;

    //设置头部视图的大小
    layout.headerReferenceSize=CGSizeMake(kScrenW, headH);
    
//实例化对象
    
    _collectionView=[[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, kScrenW,  kScrenH) collectionViewLayout:layout];
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:_collectionView.bounds];
    imageV.image=[UIImage imageNamed:@"backcolor"];
    
    _collectionView.backgroundView=imageV;
    
    //代理对象和数据源对象
    _collectionView.delegate=self;
    _collectionView.dataSource=self;

    [self.view addSubview:_collectionView];


//注册单元格
    
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:identifier];

     [_collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:header];


}


#pragma mark ----- UICollectionView

//返回小组的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

//返回小组中的元素个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 8;
}
//创建单元格
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    //注册单元格
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];

    cell.backgroundColor=[UIColor whiteColor];
    
    
    
    //加上图片背景
    
    UIButton *button=[[UIButton alloc]initWithFrame:cell.bounds];
    
    
    NSString *name=[NSString stringWithFormat:@"%d",num];
//    imageView.image=[UIImage imageNamed:name];
    
    [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [cell addSubview:button];
    
    
    //加上对号
    UIImageView *imageVi=[[UIImageView alloc]initWithFrame:CGRectMake((kScrenW-space*3)/2-10, (kScrenH-64-headH-5*space)/4-10, 20, 20)];
    
    imageVi.image=[UIImage  imageNamed:@"checkmark"];

    
    imageVi.hidden=YES;
    
    if (num==selectV) {
        imageVi.hidden=NO;
    }
    
    [button addSubview:imageVi];

    
    
    //点击事件
    [button addTarget:self action:@selector(buttonAct:) forControlEvents:UIControlEventTouchUpInside];
    
    cell.tag=num;
    button.tag=num+100;
    imageVi.tag=num+200;
    
    //标志加一
    
    if (num==8) {
        num=0;
    }
    num++;

    //返回单元格
    return cell;
    
}



//点击事件
- (void)buttonAct:(UIButton *)button{
    
    //隐藏对号 第一次进来
    if (a==0 && button.tag!=101) {
        
        UICollectionViewCell *cell  =(UICollectionViewCell *)[_collectionView viewWithTag:1];
        UIButton *but=(UIButton *)[cell viewWithTag:101];
        UIView *viTH=[but viewWithTag:201];
        viTH.hidden=YES;

        UIView *viT=[button viewWithTag:button.tag+100];
        viT.hidden=NO;
//            NSLog(@"%@",viT);

    }
    
    //后来进来
    else if (a!=button.tag&& a!=0) {
        
        UICollectionViewCell *cell  =(UICollectionViewCell *)[_collectionView viewWithTag:a-100];
        UIButton *butt=(UIButton *)[cell viewWithTag:a];
        UIView *vi=[butt viewWithTag:a+100];
        vi.hidden=YES;
        
        
        
        
        
    }
    
    UIView *viT=[button viewWithTag:button.tag+100];
    viT.hidden=NO;
//    NSLog(@"%@",viT);
    
    selectV=button.tag-100;
    
//    _Item=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kScrenW, 49)];
    
    self.Item =[[UIImageView alloc]init];
    self.Item.frame=CGRectMake(0, 0, kScrenW, 49);
    NSString *str=[NSString stringWithFormat:@"%ld",button.tag-100];
    _Item.image=[UIImage imageNamed:str];
    
//    NSLog(@"%@",_Item);
    
//    block2(Item);
    a=button.tag;
    
    

}

//给navigation加button
- (void)addNivButton{


    UIButton *bu=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
    
    [bu setImage:[UIImage imageNamed:@"keyboard_return_64px_1181971_easyicon.net"]forState:UIControlStateNormal];
    
    [bu addTarget:self action:@selector(popBuAct:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *barBut=[[UIBarButtonItem alloc]initWithCustomView:bu];
    
    self.navigationItem.leftBarButtonItem=barBut;






}

- (void)popBuAct:(UIButton *)btn{

 
    [self.navigationController popViewControllerAnimated:YES];

//    selectV;
    NSString *str=[NSString stringWithFormat:@"%d",selectV];
    NSLog(@"%@",str);
    self.Item.image=[UIImage imageNamed:str];
    ZXYTabBarController *tabbar=(ZXYTabBarController *)self.tabBarController;
//    tabbar.tabbarImage=[UIImage imageNamed:str];
    tabbar.tabbarView.image=[UIImage imageNamed:str];
}


//创建头部视图
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    //判断类型是否为头部视图
    if (kind == UICollectionElementKindSectionHeader) {
        //创建头部视图
        UICollectionReusableView *headerCell = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:header forIndexPath:indexPath];
        
        //给头视图加图片
        UIImageView *imageVi=[[UIImageView alloc]initWithFrame:headerCell.bounds];
        imageVi.image=[UIImage imageNamed:@"topbg"];
//        headerCell.backgroundColor = [UIColor blueColor];
        [headerCell addSubview:imageVi];
        
        return headerCell;
    }
    return nil;
}


//设置边距
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{


    return UIEdgeInsetsMake(40, 20, 20, 20);


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
