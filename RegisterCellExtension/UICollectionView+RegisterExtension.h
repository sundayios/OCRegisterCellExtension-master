//
//  UICollectionView+RegisterCell.h
//  OCRegisterCellExtension
//
//  Created by administrator on 2019/4/16.
//  Copyright © 2019 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (RegisterExtension)
- (void)sq_registerCollecitonCellClass:(Class)cls;
//
- (void)sq_registerforSupplementaryViewOfKindSectionHeader:(Class)cls;
- (void)sq_registerforSupplementaryViewOfKindSectionFooter:(Class)cls;
- (void)sq_registerforSupplementaryViewOfKindSection:(Class)cls;
@end

NS_ASSUME_NONNULL_END
