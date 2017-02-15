//
//  DetailViewController.m
//  WeatherObj
//
//  Created by MC_test on 14/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailViewController.h"
#import "UIColorExtension.h"
#import "Masonry.h"
#import "DetailCell.h"

@implementation DetailViewController

-(instancetype)initWithViewModel:(DetailViewModel *)viewModel_ {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.estimatedHeight = 85.5;
        self.viewModel = viewModel_;
        self.title = @"Details";
        self.tableView = [[UITableView alloc] init];
        [self.tableView setBackgroundColor:[UIColor deepBlue]];
        [self.tableView setDelegate:self];
        [self.tableView setDataSource:self];
        [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
        [self.tableView registerClass:DetailCell.self
               forCellReuseIdentifier:@"detailCell"];
    }
    return self;
}

-(void)loadView {
    [super loadView];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(self.view);
    }];
}

//UITableViewDelegate implementation

-(CGFloat) tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.estimatedHeight;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    self.estimatedHeight = cell.frame.size.height;
}


//UITableViewDataSource implementation

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.viewModel.numberOfSections;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel numberOfRows];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray *dayNight = [self.viewModel rowAt:indexPath];
    if (!dayNight) {
        DetailCell *cell = [[DetailCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"detailCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
    Place *day = [dayNight objectAtIndex:0];
    Place *night = [dayNight objectAtIndex:1];
    DetailCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"detailCell"];
    
    if(cell == nil) {
        cell = [[DetailCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"detailCell"];
    }
    [cell set:day and:night];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell setBackgroundColor:[UIColor deepBlue]];
    return cell;
}

@end
