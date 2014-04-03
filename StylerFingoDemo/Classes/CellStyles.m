//
//  CellStyles.m
//  StylerFingoDemo
//
//  Created by Zart Arn on 03.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "CellStyles.h"

@implementation CellStyle0

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
//        [[[self class] appearance] applyInvocationTo:self];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - setters

- (void)setTextNormalColor:(UIColor *)textNormalColor
{
    if (_textNormalColor != textNormalColor) {
        _textNormalColor = textNormalColor;
        self.textLabel.textColor = textNormalColor;
    }
}

- (void)setTextHighlitedColor:(UIColor *)textHighlitedColor
{
    if (_textHighlitedColor != textHighlitedColor) {
        _textHighlitedColor = textHighlitedColor;
        self.textLabel.highlightedTextColor = textHighlitedColor;
    }
}

- (void)setTextFont:(UIFont *)textFont
{
    if (_textFont != textFont) {
        _textFont = textFont;
        self.textLabel.font = textFont;
    }
}

#pragma mark - MZAppearance delegate

+ (id)appearance
{
    return [MZAppearance appearanceForClass:[self class]];
}

@end

@implementation CellStyle1
@end