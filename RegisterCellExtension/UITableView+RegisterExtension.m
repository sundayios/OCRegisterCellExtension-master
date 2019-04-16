//
//  UITableView+RegisterCell.m
//  OCRegisterCellExtension
//
//  Created by administrator on 2019/4/16.
//  Copyright © 2019 administrator. All rights reserved.
//

#import "UITableView+RegisterExtension.h"

@implementation UITableView (RegisterExtension)
- (void)sq_registerCellClass:(Class)cls{
    NSString *nibName = NSStringFromClass(cls);
    NSString *path = [[NSBundle mainBundle] pathForResource:nibName ofType:@"nib"];
    if (path) {
        [self registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:nibName];
    }else{
        [self registerClass:cls forCellReuseIdentifier:nibName];
    }
}
- (void)sq_registerHeaderFooterViewReuseClass:(Class)cls{
    NSString *nibName = NSStringFromClass(cls);
    NSString *path = [[NSBundle mainBundle] pathForResource:nibName ofType:@"nib"];
    if (path) {
        [self registerNib:[UINib nibWithNibName:@"" bundle:nil] forHeaderFooterViewReuseIdentifier:NSStringFromClass(cls)];
    }else{
        [self registerClass:cls forHeaderFooterViewReuseIdentifier:NSStringFromClass(cls)];
    }
}
@end
