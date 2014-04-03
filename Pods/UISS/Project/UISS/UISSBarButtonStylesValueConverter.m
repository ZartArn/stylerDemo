//
//  UISSBarButtonStylesValueConverter.m
//  Pods
//
//  Created by Zart Arn on 03.04.14.
//
//

#import "UISSBarButtonStylesValueConverter.h"

@implementation UISSBarButtonStylesValueConverter

- (id)init
{
    self = [super init];
    if (self) {
        self.stringToValueDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                        [NSNumber numberWithInteger:UIBarButtonItemStylePlain],     @"plain",
                                        [NSNumber numberWithInteger:UIBarButtonItemStyleBordered],  @"bordered",
                                        [NSNumber numberWithInteger:UIBarButtonItemStyleDone],      @"done",
                                        nil];
        self.stringToCodeDictionary= [NSDictionary dictionaryWithObjectsAndKeys:
                                      @"UIBarButtonItemStylePlain", @"plain",
                                      @"UIBarButtonItemStyleBordered", @"bordered",
                                      @"UIBarButtonItemStyleDone", @"done",
                                      nil];
    }
    return self;
}

- (NSString *)propertyNameSuffix;
{
    return @"style";
}

@end
