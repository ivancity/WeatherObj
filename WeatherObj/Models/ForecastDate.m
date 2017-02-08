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
    _phenomenon = phenomenon;
    if (phenomenon.length) {
        //not empty
        [self chooseWeatherIcon:phenomenon];
    } else {
        self.icon = nil;
    }
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
    self.tempMinWord = [self spellOutWords:tempMin];
}

- (void)setTempMax:(int)tempMax {
    _tempMax = tempMax;
    self.tempMaxWord = [self spellOutWords:tempMax];
}

- (NSString*)spellOutWords:(int)ofNumber {
    NSNumber *numberValue = [NSNumber numberWithInt:ofNumber];
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterSpellOutStyle];
    return [numberFormatter stringFromNumber:numberValue];
}

-(NSString *)tempMinFormatted {
    if (self.tempMin) {
        return [NSString stringWithFormat:@"%d ˚C", self.tempMin];
    }
    return @"N/A";
}

-(NSString *)tempMaxFormatted {
    if (self.tempMax) {
        return [NSString stringWithFormat:@"%d ˚C", self.tempMax];
    }
    return @"N/A";
}

-(NSString *)windMinFormatted {
    if (self.windMin) {
        return [NSString stringWithFormat:@"%d m/s", self.windMin];
    }
    return @"N/A";
}

-(NSString *)windMaxFormatted {
    if (self.windMax) {
        return [NSString stringWithFormat:@"%d m/s", self.windMax];
    }
    return @"N/A";
}

-(void)setWindArray:(NSArray *)windArray {
    _windArray = windArray;
    if (windArray == nil) {
        self.windMin = 0;
        self.windMax = 0;
    } else {
        [self maxMinWindValues:windArray];
    }
}

-(void)maxMinWindValues:(NSArray *)wind {
    if ([wind count] == 0) {
        self.windMin = 0;
        self.windMax = 0;
        return;
    }
    Wind *first = [wind objectAtIndex:0];
    int max = first.speedMax;
    int min = first.speedMin;
    int current = max;
    for (Wind *item in wind) {
        current = item.speedMax;
        if (current > max) {
            max = current;
        }
        current = item.speedMin;
        if (current < min) {
            min = current;
        }
    }
    self.windMin = min;
    self.windMax = max;
}

-(NSString *)temperatureAsPhrase {
    if (!self.tempMinWord.length && !self.tempMaxWord.length) {
        return @"Not enough weather info.";
    }
    return [NSString stringWithFormat:@"As cold as %@, and as warm as %@",
            self.tempMinWord,
            self.tempMaxWord];
}

@end
