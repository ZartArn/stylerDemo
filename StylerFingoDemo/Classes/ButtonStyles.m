//
//  ButtonStyle1.m
//  StylerFingo
//
//  Created by Zart Arn on 27.03.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "ButtonStyles.h"
#import "UIColor+tools.h"
#import "FingoStyleConfig.h"

@implementation ButtonStyle0


- (instancetype)init
{
    if (self = [super init]) {
        [[[self class] appearance] applyInvocationTo:self];
    }
    return self;
}

- (void)setTitleFont:(UIFont *)font
{
    if (_titleFont != font) {
        _titleFont = font;
        self.titleLabel.font = font;
    }
}

+ (instancetype)buttonWithTitle:(NSString *)title
{
    return [self buttonWithTitle:title image:nil width:0];
}

+ (instancetype)buttonWithTitle:(NSString *)title width:(CGFloat)width
{
    return [self buttonWithTitle:title image:nil width:width];
}

+ (instancetype)buttonWithTitle:(NSString *)title image:(UIImage *)image
{
    return [self buttonWithTitle:title image:image width:0];
}

+ (instancetype)buttonWithTitle:(NSString *)title image:(UIImage *)image width:(CGFloat)width
{
    ButtonStyle0 *btn = [self buttonWithType:UIButtonTypeCustom];
    [[self appearance] applyInvocationTo:btn];
    
    [btn setTitle:title forState:UIControlStateNormal];
    if (image) {
        [btn setImage:image forState:UIControlStateNormal];
        [btn setImage:image forState:UIControlStateHighlighted];
        CGFloat spacing = btn.spacing ? btn.spacing : 10.f;
        btn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, spacing);
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, spacing, 0, 0);
    }
    
    [btn sizeToFit];
    if (width) {
        CGRect rect = btn.frame;
        rect.size.width = width;
        btn.frame = rect;
    }
    
    return btn;
}

#pragma mark - MZAppearance delegate

+ (id)appearance
{
    return [MZAppearance appearanceForClass:[self class]];
}

@end

@implementation ButtonStyle1
@end

@implementation ButtonStyle2
@end

@implementation ButtonStyle3
@end

@implementation ButtonStyle4
@end

@implementation ButtonStyle5
@end
