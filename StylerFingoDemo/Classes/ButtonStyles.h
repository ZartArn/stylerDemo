//
//  ButtonStyle1.h
//  StylerFingo
//
//  Created by Zart Arn on 27.03.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZAppearance.h"

@interface ButtonStyle0 : UIButton <MZAppearance>

@property (nonatomic) CGFloat spacing MZ_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIFont *titleFont MZ_APPEARANCE_SELECTOR;

+ (instancetype)buttonWithTitle:(NSString *)title;
+ (instancetype)buttonWithTitle:(NSString *)title width:(CGFloat)width;
+ (instancetype)buttonWithTitle:(NSString *)title image:(UIImage *)image;
+ (instancetype)buttonWithTitle:(NSString *)title image:(UIImage *)image width:(CGFloat)width;

@end

@interface ButtonStyle1 : ButtonStyle0
@end

@interface ButtonStyle2 : ButtonStyle0
@end

@interface ButtonStyle3 : ButtonStyle0
@end

@interface ButtonStyle4 : ButtonStyle0
@end

@interface ButtonStyle5 : ButtonStyle0
@end

@interface NavButton : ButtonStyle0
@end
