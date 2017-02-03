//
//  SplashViewController.m
//  WeatherObj
//
//  Created by MC_test on 03/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SplashViewController.h"
@implementation SplashViewController

- (id)initWithViewModel: (SplashViewModel *) viewModel_ {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.viewModel = viewModel_;
        
    }
    return self;
}

- (void)displayError:(NSString *)message {
    
}

@end
