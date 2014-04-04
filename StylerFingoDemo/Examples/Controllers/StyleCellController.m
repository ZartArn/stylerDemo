//
//  StyleCellController.m
//  StylerFingoDemo
//
//  Created by Zart Arn on 03.04.14.
//  Copyright (c) 2014 Zart Arn. All rights reserved.
//

#import "StyleCellController.h"
#import "exampleCell.h"
#import "LabelStyles.h"
#import "exampleCell-2.h"

@interface StyleCellController ()

@end

@implementation StyleCellController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"Таблица";

    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[exampleCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:tableView];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger min = 2, max = 10;
    return min + arc4random() % (max - min + 1);
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Header %li", (long)section];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *v = [[UIView alloc] init];
    CategoryHLabel *label = [[CategoryHLabel alloc] init];
    label.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    label.text = [NSString stringWithFormat:@"Header %li", (long)section];
    [v addSubview:label];
    
    return v;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Text %li", (long)indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (cell.selected) {
        NSLog(@"Tap");
        NSLog(@"mask cell %i", cell.layer.masksToBounds);
        NSLog(@"mask cellscrollview %i", [(UIView *)[[cell subviews] objectAtIndex:0] layer].masksToBounds);
        for (UIView *v in [[[cell subviews] objectAtIndex:0] subviews]) {
            NSLog(@"%@", v);
            NSLog(@"hidden %i", v.hidden);
            NSLog(@"alpha %f", v.alpha);
            NSLog(@"mask %i", v.layer.masksToBounds);
        }
        NSLog(@"Tap");
    }
}

@end
