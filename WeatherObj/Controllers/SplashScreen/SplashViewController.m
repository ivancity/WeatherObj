//
//  SplashViewController.m
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SplashViewController.h"
#import "Masonry.h"
@implementation SplashViewController

- (id)initWithViewModel: (SplashViewModel *) viewModel_ {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.viewModel = viewModel_;
        self.viewModel.viewDelegate = self;
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img_splash"]];
    }
    return self;
}

- (void)loadView {
    [super loadView];
    self.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.imageView];
    
    //UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    
}

- (void)displayError:(NSString *)message {
    
}

@end
