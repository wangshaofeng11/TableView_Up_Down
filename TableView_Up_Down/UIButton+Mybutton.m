//
//  UIButton+Mybutton.m
//  TableView_Up_Down
//
//  Created by 爱康国宾 on 15/5/14.
//  Copyright (c) 2015年 爱康国宾. All rights reserved.
//

#import "UIButton+Mybutton.h"
#import <objc/runtime.h>

char* const ASSOCIATION_MUTABLE_USER_INFO = "ASSOCIATION_MUTABLE_USER_INFO";
@implementation UIButton (Mybutton)

- (void)setIndexPath:(NSIndexPath *)indexPath{

    objc_setAssociatedObject(self, ASSOCIATION_MUTABLE_USER_INFO, indexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)indexPath{

    NSIndexPath *indexPath = objc_getAssociatedObject(self, ASSOCIATION_MUTABLE_USER_INFO);
    
    return indexPath;

}

@end
