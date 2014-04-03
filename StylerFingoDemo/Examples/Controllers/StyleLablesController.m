//
//  StyleLablesController.m
//  StylerFingoDemo
//
//  Created by Zart Arn on 03.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "StyleLablesController.h"
#import "LabelStyles.h"

@interface StyleLablesController ()

@end

@implementation StyleLablesController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.navigationItem.title = @"Текст";
    
    CategoryHLabel *label = [[CategoryHLabel alloc] init];
    label.text = @"CategoryHLabel";
    label.frame = CGRectMake(0, 100, 320, 44);
    [self.view addSubview:label];
    
    BrandHLabel *labelb = [[BrandHLabel alloc] init];
    labelb.text = @"BrandHLabel";
    labelb.frame = CGRectMake(0, 150, 320, 30);
    [self.view addSubview:labelb];
    
    NameHLabel *label2 = [[NameHLabel alloc] init];
    label2.text = @"NameHLabel";
    label2.frame = CGRectMake(0, 180, 320, 20);
    [self.view addSubview:label2];

    LabelHeader2 *label3 = [[LabelHeader2 alloc] init];
    label3.text = @"LabelHeader2";
    label3.frame = CGRectMake(0, 210, 320, 44);
    [self.view addSubview:label3];

    LabelHeader3 *label4 = [[LabelHeader3 alloc] init];
    label4.text = @"LabelHeader3\nfew lines";
    label4.numberOfLines = 2;
    label4.lineBreakMode = NSLineBreakByWordWrapping;
    label4.frame = CGRectMake(0, CGRectGetMaxY(label3.frame) + 5, 320, 44);
    [self.view addSubview:label4];

    TextMultiLabel *text = [[TextMultiLabel alloc] init];
    text.numberOfLines = 0;
    text.lineBreakMode = NSLineBreakByWordWrapping;
    text.text = @"До Homebrew было несколько различных попыток создать эффективные пакетные менеджеры для OS X. Две наиболее популярные вылились в итоге в Fink и Macports, но у каждой из них все равно есть свои острые углы. В частности, в обоих создание своих пакетов или портов является черезчур сложным.";
    text.frame = CGRectMake(10, CGRectGetMaxY(label4.frame), self.view.bounds.size.width - 20, 80);
    [self.view addSubview:text];
}

@end
