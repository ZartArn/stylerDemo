//
//  LabelStyles.h
//  StylerFingo
//
//  Created by Zart Arn on 01.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZAppearance.h"

@interface LabelStyle0 : UILabel <MZAppearance>
@end

@interface CategoryHLabel : LabelStyle0
@end

@interface NameHLabel : LabelStyle0
@end

@interface BrandHLabel : LabelStyle0
@end

@interface LabelHeader2 : LabelStyle0
@property (nonatomic) UIEdgeInsets margins MZ_APPEARANCE_SELECTOR;
@end

@interface LabelHeader3 : LabelStyle0
@end

@interface TextMultiLabel : LabelStyle0
@end
