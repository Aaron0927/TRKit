//
//  UIScrollView+TRAdd.m
//  ToolKit
//
//  Created by Tronsis－mac on 2018/4/19.
//  Copyright © 2018年 Kim－pc. All rights reserved.
//

#import "UIScrollView+TRAdd.h"

@implementation UIScrollView (TRAdd)
- (UIImage *)getCapture {
    UIImage* viewImage = nil;
    UIGraphicsBeginImageContextWithOptions(self.contentSize, self.opaque, 0.0);
    {
        CGPoint savedContentOffset = self.contentOffset;
        CGRect savedFrame = self.frame;
        
        self.contentOffset = CGPointZero;
        self.frame = CGRectMake(0, 0, self.contentSize.width, self.contentSize.height);
        
        [self.layer renderInContext: UIGraphicsGetCurrentContext()];
        viewImage = UIGraphicsGetImageFromCurrentImageContext();
        
        self.contentOffset = savedContentOffset;
        self.frame = savedFrame;
    }
    UIGraphicsEndImageContext();
    
    return viewImage;
}
@end
