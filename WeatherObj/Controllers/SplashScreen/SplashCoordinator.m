//
//  SplashCoordinator.m
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SplashCoordinator.h"
#import "SplashViewController.h"

@implementation SplashCoordinator

- (id)init {
    self = [super init];
    if (self) {
        self.viewModel = [[SplashViewModel alloc] init];
        self.splashVc = [[SplashViewController alloc] initWithViewModel: self.viewModel];
        self.viewModel.coordinatorDelegate = self;
    }
    return self;
}

- (UIViewController *)startController {
    return self.splashVc;
}

- (void)fetchCompleted {
    
}

@end
