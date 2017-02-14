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
        
        [self chooseWeatherIcon:[phenomenon lowercaseString]];
    } else {
        self.icon = rainbow;
    }
}

- (void)chooseWeatherIcon:(NSString *)phenomenon {
    if ([phenomenon containsString:@"cloud"]) {
        self.icon = cloud;
    } else if ([phenomenon containsString:@"sun"]) {
        self.icon = sun;
    } else if ([phenomenon containsString:@"rain"]) {
        self.icon = rain;
    } else if ([phenomenon containsString:@"snow"]) {
        self.icon = snow;
    } else if ([phenomenon containsString:@"sleet"]) {
        self.icon = sleet;
    } else if ([phenomenon containsString:@"mist"]) {
        self.icon = mist;
    } else if ([phenomenon containsString:@"glaze"]) {
        self.icon = glaze;
    } else {
        self.icon = rainbow;
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
    return [NSString stringWithFormat:@"%d ˚C", self.tempMin];
}

-(NSString *)tempMaxFormatted {
    return [NSString stringWithFormat:@"%d ˚C", self.tempMax];
}

-(NSString *)windMinFormatted {
    return [NSString stringWithFormat:@"%d m/s", self.windMin];
}

-(NSString *)windMaxFormatted {
    return [NSString stringWithFormat:@"%d m/s", self.windMax];
    
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
