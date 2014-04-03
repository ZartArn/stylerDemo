//
//  exampleCell.m
//  StylerFingoDemo
//
//  Created by Zart Arn on 03.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "exampleCell.h"
#import "LabelStyles.h"

@implementation exampleCell 

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self configure];
    }
    return self;
}

- (void)configure
{
    [[[self class] appearance] applyInvocationTo:self];
    self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"moreAccessorImage.png"]
                                           highlightedImage:[UIImage imageNamed:@"moreAccessorImageActive.png"]];
    UIView *customColorView = [[UIView alloc] init];
    customColorView.backgroundColor = [UIColor clearColor];
    self.selectedBackgroundView =  customColorView;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
