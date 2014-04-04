//
//  exampleCell-2.m
//  StylerFingoDemo
//
//  Created by Zart Arn on 04.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "exampleCell-2.h"

@implementation exampleCell_2

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)configure
{
    [[[self class] appearance] applyInvocationTo:self];
    self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"moreAccessorImage.png"]
                                           highlightedImage:[UIImage imageNamed:@"moreAccessorImageActive.png"]];

    UIImageView *bgSelected = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"cell-selected.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(1, 33, 1, 0)]];
    self.selectedBackgroundView = bgSelected;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
