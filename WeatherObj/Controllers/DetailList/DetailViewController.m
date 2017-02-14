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

@implementation DetailViewController

-(instancetype)initWithViewModel:(DetailViewModel *)viewModel_ {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.estimatedHeight = 85.5;
        self.viewModel = viewModel_;
        self.title = @"Details";
        self.tableView = [[UITableView alloc] init];
        [self.tableView setBackgroundColor:[UIColor skyBlue]];
        [self.tableView setDelegate:self];
        [self.tableView setDataSource:self];
        [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%d", (int)indexPath.row);
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
        //TODO send empty row
        return nil;
    }
    return nil;
}

@end
