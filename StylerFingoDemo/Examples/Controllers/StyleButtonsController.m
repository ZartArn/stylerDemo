//
//  StyleButtonsController.m
//  StylerFingoDemo
//
//  Created by Zart Arn on 03.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "StyleButtonsController.h"
#import "ButtonStyles.h"

@interface StyleButtonsController ()
@end

@implementation StyleButtonsController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Кнопки";
    
    // nav buttons
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Каталог" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    NavButton *navButton = [NavButton buttonWithTitle:@"Фильтр" width:65.f];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:navButton];
    
    
    // buttons
    
    ButtonStyle1 *btn1 = [ButtonStyle1 buttonWithTitle:@"ButtonStyle 1" width:200.f];
    btn1.frame = CGRectOffset(btn1.frame, 10.f, 100.f);
    [self.view addSubview:btn1];
    
    ButtonStyle2 *btn2 = [ButtonStyle2 buttonWithTitle:@"ButtonStyle 2" width:200.f];
    btn2.frame = CGRectOffset(btn2.frame, 10.f, 150.f);
    [self.view addSubview:btn2];
    
    ButtonStyle3 *btn3 = [ButtonStyle3 buttonWithTitle:@"ButtonStyle 3" width:200.f];
    btn3.frame = CGRectOffset(btn3.frame, 10.f, 200.f);
    [self.view addSubview:btn3];
    
    UIImage *image = [UIImage imageNamed:@"send-marker.png"];
    ButtonStyle1 *btn = [ButtonStyle1 buttonWithTitle:@"ButtonStyle1 + Image" image:image width:250.f];
    btn.frame = CGRectOffset(btn.frame, 10.f, 250.f);
    [self.view addSubview:btn];
    
    image = [UIImage imageNamed:@"print-marker.png"];
    ButtonStyle4 *btn4 = [ButtonStyle4 buttonWithTitle:@"Скачать маркер" image:image width:148.f];
    btn4.frame = CGRectOffset(btn4.frame, 10.f, 300.f);
    [self.view addSubview:btn4];
}

@end
