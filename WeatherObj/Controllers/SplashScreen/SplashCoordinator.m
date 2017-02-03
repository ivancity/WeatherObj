//
//  SplashCoordinator.m
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SplashCoordinator.h"

@implementation SplashCoordinator

- (id)init {
    self = [super init];
    if (self) {
        //init SplashViewModel() and SplashViewController(viewModel)
        self.viewModel = [[SplashViewModel alloc] init];
        
        
        //set viewModel.coordinatorDelegate = self
    }
    return self;
}

- (UIViewController *)startController {
    
}

@end
