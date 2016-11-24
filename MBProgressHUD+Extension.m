//
//  MBProgressHUD+Extension.m
//  UDrivingCustomer
//
//  Created by dihong on 16/7/12.
//  Copyright © 2016年 Marike Jave. All rights reserved.
//

#import "MBProgressHUD+Extension.h"

@implementation MBProgressHUD (Extension)

+ (MBProgressHUD *)showProgressText:(NSString *)text addedTo:(UIView *)view animated:(BOOL)animated;{
    [MBProgressHUD hideAllHUDsForView:view animated:NO];
    
    MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:view animated:YES];
    progressHUD.removeFromSuperViewOnHide = YES;
    progressHUD.labelText = text;
    
    return progressHUD;
}

+ (MBProgressHUD *)showText:(NSString *)text addedTo:(UIView *)view animated:(BOOL)animated afterDelay:(NSTimeInterval)delay;{
    MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    [progressHUD toText:text hide:animated afterDelay:delay];
    
    return progressHUD;
}

- (void)toText:(NSString *)text hide:(BOOL)animated afterDelay:(NSTimeInterval)delay;{
    self.removeFromSuperViewOnHide = YES;
    self.mode = MBProgressHUDModeText;
    self.labelText = text;
    
    [self hide:animated afterDelay:delay];
}

@end
