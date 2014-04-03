//
//  CellStyles.h
//  StylerFingoDemo
//
//  Created by Zart Arn on 03.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZAppearance.h"

@interface CellStyle0 : UITableViewCell <MZAppearance>

@property (nonatomic, strong) UIColor *textNormalColor MZ_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor *textHighlitedColor MZ_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIFont *textFont MZ_APPEARANCE_SELECTOR;

@end

@interface CellStyle1 : CellStyle0
@end
