//
//  StyleTestController.m
//  StylerFingo
//
//  Created by Zart Arn on 27.03.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "StyleTestController.h"
#import "ButtonStyles.h"
#import "UISS.h"
#import "UIColor+tools.h"

@interface StyleTestController ()

@property (nonatomic, strong) UISS *uiss;
@property (nonatomic, strong) ButtonStyle1 *btn1;
@property (nonatomic, strong) ButtonStyle2 *btn2;
@property (nonatomic, strong) ButtonStyle3 *btn3;

@end

@implementation StyleTestController

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
    
//    self.uiss = [UISS configureWithDefaultJSONFile];
//    _uiss.statusWindowEnabled = YES;
    
//    UIButton *btn0 = [UIButton buttonWithType:UIButtonTypeCustom];
//    [btn0 setTitle:@"Test" forState:UIControlStateNormal];
//    btn0.frame = CGRectMake(10.f, 100.f, 200, 50);
//    [self.view addSubview:btn0];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Hello";
    
    self.btn1 = [ButtonStyle1 buttonWithTitle:@"Button Style 1" width:200.f];
    _btn1.frame = CGRectOffset(_btn1.frame, 10.f, 100.f);
    [self.view addSubview:_btn1];

    self.btn2 = [ButtonStyle2 buttonWithTitle:@"Button Style 2" width:200.f];
    _btn2.frame = CGRectOffset(_btn2.frame, 10.f, 150.f);
    [self.view addSubview:_btn2];

    self.btn3 = [ButtonStyle3 buttonWithTitle:@"Button Style 3" width:200.f];
    _btn3.frame = CGRectOffset(_btn3.frame, 10.f, 200.f);
    [self.view addSubview:_btn3];
    
    UIImage *image = [UIImage imageNamed:@"send-marker.png"];
    ButtonStyle1 *btn = [ButtonStyle1 buttonWithTitle:@"Style 1 + Image" image:image width:250.f];
    btn.frame = CGRectOffset(btn.frame, 10.f, 250.f);
    [self.view addSubview:btn];

    image = [UIImage imageNamed:@"print-marker.png"];
    ButtonStyle4 *btn4 = [ButtonStyle4 buttonWithTitle:@"Скачать маркер" image:image width:148.f];
    btn4.frame = CGRectOffset(btn4.frame, 10.f, 300.f);
    [self.view addSubview:btn4];

    
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
