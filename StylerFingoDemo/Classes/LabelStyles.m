//
//  LabelStyles.m
//  StylerFingo
//
//  Created by Zart Arn on 01.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "LabelStyles.h"

@implementation LabelStyle0

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code
        [self configure];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self configure];
    }
    return self;
}

- (void)configure
{
    [[[self class] appearance] applyInvocationTo:self];
}

#pragma mark - MZAppearance delegate

+ (id)appearance
{
    return [MZAppearance appearanceForClass:[self class]];
}

@end

@implementation LabelHeaderCategory
@end

@implementation NameHLabel
@end

@implementation BrandHLabel
@end

@implementation LabelHeader2
@end
