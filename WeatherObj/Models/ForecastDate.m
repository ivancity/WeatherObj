//
//  ForecastDate.m
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForecastDate.h"
@implementation ForecastDate
- (void)setPhenomenon:(NSString *)phenomenon {
    if (phenomenon.length) {
        //not empty
        [self chooseWeatherIcon:phenomenon];
    } else {
        self.icon = nil;
    }
    _phenomenon = phenomenon;
}

- (void)chooseWeatherIcon:(NSString *)phenomenon {
    if ([phenomenon containsString:@"cloud"]) {
        self.icon = @"☁️";
    } else if ([phenomenon containsString:@"sun"]) {
        self.icon = @"🌝";
    } else if ([phenomenon containsString:@"rain"]) {
        self.icon = @"🌧";
    } else if ([phenomenon containsString:@"snow"]) {
        self.icon = @"☃️";
    } else if ([phenomenon containsString:@"sleet"]) {
        self.icon = @"🌨";
    } else {
        self.icon = @"🌈";
    }
}

- (void)setTempMin:(int)tempMin {
    
    _tempMin = tempMin;
    
    //convert to words
    NSNumber *numberValue = [NSNumber numberWithInt:tempMin]; //needs to be NSNumber!
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    self.tempMinWord = [numberFormatter stringFromNumber:numberValue];
}

@end
