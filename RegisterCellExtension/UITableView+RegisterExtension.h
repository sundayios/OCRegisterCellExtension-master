//
//  UITableView+RegisterCell.h
//  OCRegisterCellExtension
//
//  Created by administrator on 2019/4/16.
//  Copyright © 2019 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (RegisterExtension)
- (void)sq_registerCellClass:(Class)cls;

- (void)sq_registerHeaderFooterViewReuseClass:(Class)cls;
@end

NS_ASSUME_NONNULL_END
