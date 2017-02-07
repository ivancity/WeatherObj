//
//  UIColorExtension.m
//  WeatherObj
//
//  Created by MC_test on 07/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation UIColor (Extensions)

+ (UIColor *)skyBlue {
    return [UIColor colorWithRed:0.0f/255.0f
                           green:169.0f/255.0f
                            blue:199.0f/255.0f
                           alpha:1.0f];
}

+ (UIColor *)deepBlue {
    return [UIColor colorWithRed:0.0f/255.0f
                           green:191.0f/255.0f
                            blue:255.0f/255.0f
                           alpha:1.0f];
}

+ (UIColor *)whiteTwo {
    return [UIColor colorWithRed:216.0f/255.0f
                           green:216.0f/255.0f
                            blue:216.0f/255.0f
                           alpha:1.0f];
}

+ (UIColor *)whiteThree {
    return [UIColor colorWithRed:236.0f/255.0f
                           green:236.0f/255.0f
                            blue:236.0f/255.0f
                           alpha:1.0f];
}

@end
