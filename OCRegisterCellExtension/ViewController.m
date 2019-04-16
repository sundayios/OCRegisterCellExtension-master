//
//  ViewController.m
//  OCRegisterCellExtension
//
//  Created by administrator on 2019/4/16.
//  Copyright © 2019 administrator. All rights reserved.
//

#import "ViewController.h"
#import "SQTableViewCell.h"
#import "UITableView+RegisterExtension.h"
#import "TableViewHeaderFoonter.h"

#import "SQCollectionViewCell.h"
#import "UICollectionView+RegisterExtension.h"
#import "HeaderCollectionReusableView.h"
#import "FooterCollectionReusableView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UICollectionView *collectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView sq_registerCellClass:[SQTableViewCell class]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SQTableViewCell *cell = (SQTableViewCell *)[tableView sq_dequeueReusableCellWithIdentifier:NSStringFromClass([SQTableViewCell class]) forIndexPath:indexPath];
    return cell;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
     TableViewHeaderFoonter *headerFooter = (TableViewHeaderFoonter *)[tableView dequeueReusableHeaderFooterViewWithIdentifier:NSStringFromClass([TableViewHeaderFoonter class])];
    return headerFooter;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    TableViewHeaderFoonter *headerFooter = (TableViewHeaderFoonter *)[tableView dequeueReusableHeaderFooterViewWithIdentifier:NSStringFromClass([TableViewHeaderFoonter class])];
    return headerFooter;
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    SQCollectionViewCell *cell = (SQCollectionViewCell *)[collectionView sq_dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SQCollectionViewCell class]) forIndexPath:indexPath];
    return cell;
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    UICollectionReusableView *reView;
    switch (indexPath.section) {
        case 0:
            {
                if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
                    HeaderCollectionReusableView *view = [collectionView sq_dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass([HeaderCollectionReusableView class]) forIndexPath:indexPath];
                    reView = view;
                }else if ([kind isEqualToString:UICollectionElementKindSectionFooter]){
                    FooterCollectionReusableView *view = [collectionView sq_dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass([FooterCollectionReusableView class]) forIndexPath:indexPath];
                    reView = view;
                }
            }
            break;
            
        default:
        {
            UICollectionReusableView *view = [collectionView sq_dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"" forIndexPath:indexPath];
            reView = view;
        }
            break;
    }
    return reView;
    
    
}

@end
