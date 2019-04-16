//
//  UICollectionView+RegisterCell.m
//  OCRegisterCellExtension
//
//  Created by administrator on 2019/4/16.
//  Copyright © 2019 administrator. All rights reserved.
//

#import "UICollectionView+RegisterExtension.h"

@implementation UICollectionView (RegisterExtension)
- (void)sq_registerCollecitonCellClass:(Class)cls{
    NSString *nibName = NSStringFromClass(cls);
    NSString *path = [[NSBundle mainBundle] pathForResource:nibName ofType:@"nib"];
    if (path) {
        [self registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellWithReuseIdentifier:nibName];
    }else{
        [self registerClass:cls forCellWithReuseIdentifier:NSStringFromClass(cls)];
    }
}
- (void)sq_registerforSupplementaryViewOfKindSectionHeader:(Class)cls{
    NSString *nibName = NSStringFromClass(cls);
    NSString *path = [[NSBundle mainBundle] pathForResource:nibName ofType:@"nib"];
    if (path) {
        [self registerNib:[UINib nibWithNibName:nibName bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass(cls)];
    }else{
        [self registerClass:cls forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass(cls)];
    }
}
- (void)sq_registerforSupplementaryViewOfKindSectionFooter:(Class)cls{
    NSString *nibName = NSStringFromClass(cls);
    NSString *path = [[NSBundle mainBundle] pathForResource:nibName ofType:@"nib"];
    if (path) {
        [self registerNib:[UINib nibWithNibName:nibName bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass(cls)];
    }else{
        [self registerClass:cls forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass(cls)];
    }
}
- (void)sq_registerforSupplementaryViewOfKindSection:(Class)cls{
    [self sq_registerforSupplementaryViewOfKindSectionHeader:cls];
    [self sq_registerforSupplementaryViewOfKindSectionFooter:cls];
}


- (id)sq_dequeueReusableCellWithReuseIdentifier:(NSString *)identifier forIndexPath:(nonnull NSIndexPath *)indexPath{
    id cell = [self dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    return cell;
}
- (id)sq_dequeueReusableSupplementaryViewOfKindHeader:(nonnull NSString *)sectionKindHeader withReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath{
    id header = [self dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:sectionKindHeader forIndexPath:indexPath];
    return header;
}
- (id)sq_dequeueReusableSupplementaryViewOfKindFooter:(nonnull NSString *)sectionKindFooter withReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath{
    id footer = [self dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:identifier forIndexPath:indexPath];
    return footer;
}
- (id)sq_dequeueReusableSupplementaryViewOfKind:(nonnull NSString *)sectionKind withReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath{
    id cell = [self dequeueReusableSupplementaryViewOfKind:sectionKind withReuseIdentifier:identifier forIndexPath:indexPath];
    return cell;
}
@end
