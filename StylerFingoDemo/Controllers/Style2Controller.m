//
//  Style2Controller.m
//  StylerFingo
//
//  Created by Zart Arn on 01.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "Style2Controller.h"
#import "LabelStyles.h"


@interface Style2Controller ()

@end

@implementation Style2Controller

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn0 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn0 setTitle:@"Test" forState:UIControlStateNormal];
    btn0.frame = CGRectMake(10.f, 70.f, 200, 30);
    [self.view addSubview:btn0];
    
    LabelHeaderCategory *label = [[LabelHeaderCategory alloc] init];
    label.text = @"CATEGORY";
    label.frame = CGRectMake(0, 100, 320, 50);
    [self.view addSubview:label];

    BrandHLabel *labelb = [[BrandHLabel alloc] init];
    labelb.text = @"BrandHLabel";
    labelb.frame = CGRectMake(0, 150, 320, 30);
    [self.view addSubview:labelb];

    NameHLabel *label2 = [[NameHLabel alloc] init];
    label2.text = @"NameHLabel";
    label2.frame = CGRectMake(0, 180, 320, 20);
    [self.view addSubview:label2];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
