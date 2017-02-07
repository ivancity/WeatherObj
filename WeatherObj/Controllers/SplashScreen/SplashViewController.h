//
//  SplashViewController.h
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "SplashViewModel.h"

@interface SplashViewController : UIViewController<SplashViewModelViewDelegate>

@property (strong, nonatomic) SplashViewModel* viewModel;
@property (strong, nonatomic) UIImageView* imageView;

- (instancetype)initWithViewModel:(SplashViewModel*) viewModel_;

@end
