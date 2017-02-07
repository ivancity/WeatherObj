//
//  ForecastListViewController.h
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewModel.h"

@interface ForecastListViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) TableViewModel* viewModel;
@property (nonatomic, strong) UITableView* tableView;
@property (nonatomic) CGFloat estimatedHeight;

- (instancetype)initWithViewModel:(TableViewModel*)viewModel_;

@end
