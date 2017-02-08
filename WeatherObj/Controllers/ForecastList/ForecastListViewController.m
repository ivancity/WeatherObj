//
//  ForecastListViewController.m
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForecastListViewController.h"
#import "UIColorExtension.h"
#import "Masonry.h"
#import "FirstWeatherCell.h"
#import "WeatherCell.h"

@implementation ForecastListViewController

- (instancetype)initWithViewModel:(TableViewModel *)viewModel_{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.estimatedHeight = 85.5;
        self.viewModel = viewModel_;
        self.title = @"Forecast";
        self.tableView = [[UITableView alloc] init];
        [self.tableView setBackgroundColor:[UIColor skyBlue]];
        [self.tableView setDelegate:self];
        [self.tableView setDataSource:self];
        [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
        [self.tableView registerClass:FirstWeatherCell.self forCellReuseIdentifier:@"firstCell"];
        [self.tableView registerClass:WeatherCell.self forCellReuseIdentifier:@"cell"];
        
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

-(UIColor *)cellColor:(int)row {
    if (row%2 == 0) {
        return [UIColor deepBlue];
    }
    return [UIColor skyBlue];
}

//UITableViewDelegate implementation

-(CGFloat) tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.estimatedHeight;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    self.estimatedHeight = cell.frame.size.height;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

//UITableViewDataSource implementation

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.viewModel.numberOfSections;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel numberOfRows];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Forecast *forecast = [self.viewModel rowAt:indexPath];
    if (!forecast) {
        //TODO send empty row
        return nil;
    }
    TableCells cell = indexPath.row == firstCell ? firstCell : otherCell;
    switch (cell) {
        case firstCell: {
            FirstWeatherCell *cell = [tableView dequeueReusableCellWithIdentifier:@"firstCell"];
            if (cell == nil) {
                cell = [[FirstWeatherCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"firstCell"];
            }
            [cell set:forecast];
            [cell setBackgroundColor:[self cellColor:(int)indexPath.row]];
            return cell;
        }
        case otherCell: {
            WeatherCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
            if (cell == nil) {
                cell = [[WeatherCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            }
            [cell set:forecast];
            [cell setBackgroundColor:[self cellColor:(int)indexPath.row]];
            return cell;
        }
    }

}

@end
