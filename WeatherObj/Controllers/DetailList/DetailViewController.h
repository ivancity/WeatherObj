//
//  DetailViewController.h
//  WeatherObj
//
//  Created by MC_test on 14/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewModel.h"

@interface DetailViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) DetailViewModel* viewModel;
@property (nonatomic, strong) UITableView* tableView;
@property (nonatomic) CGFloat estimatedHeight;

- (instancetype)initWithViewModel:(DetailViewModel*)viewModel_;

@end
