//
//  PruductViewController.m
//  lottery
//
//  Created by cain on 16/8/26.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "PruductViewController.h"

#import "Product.h"

#import "ProductCell.h"

@interface PruductViewController ()

@property (nonatomic,strong) NSMutableArray *products;

@end

@implementation PruductViewController

static NSString * const reuseIdentifier = @"Cell";

-(NSMutableArray *)products{
    if (_products == nil) {
        _products = [NSMutableArray array];
    }
    
    NSString *file = [[NSBundle mainBundle]pathForResource:@"products.json" ofType:nil];
    
    NSData *data = [NSData dataWithContentsOfFile:file];
    NSMutableArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    for (NSDictionary *dic in jsonArray) {
        Product *pro = [Product productWithDict:dic];
        [_products addObject:pro];
    }
    
    NSLog(@"%@",_products);
     return _products;
}


-(id)init{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    
    layout.itemSize = CGSizeMake(75,75);
    layout.minimumLineSpacing = 50;
    layout.minimumInteritemSpacing = 2;
    layout.sectionInset = UIEdgeInsetsMake(10, 0, 0, 0);

    return [super initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    UINib *xib = [UINib nibWithNibName:@"ProductCell" bundle:nil];
    [self.collectionView registerNib:xib forCellWithReuseIdentifier:reuseIdentifier];
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark <UICollectionViewDataSource>

//有多少组
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

//一共有多少个 item
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return self.products.count;
}

//每个长什么样
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
//    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    ProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    Product *product = self.products[indexPath.item];
    
    NSLog(@"%@------",product.title);
    
    cell.pro = product;
    
    //cell.backgroundColor = [UIColor redColor];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    Product *p = self.products[indexPath.item];
    NSLog(@"%@---",p.title);
}

#pragma mark <UICollectionViewDelegate>



@end
