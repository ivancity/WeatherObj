//
//  ForecastDate.h
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//
#import "Wind.h"

typedef NS_ENUM(NSInteger, WeatherElements) {
    cloud,
    sun,
    rain,
    snow,
    sleet,
    mist,
    glaze,
    rainbow
};

@interface ForecastDate : NSObject
@property (nonatomic, strong) NSString *phenomenon;
@property (nonatomic) int tempMin;
@property (nonatomic) int tempMax;
@property (nonatomic) int windMin;
@property (nonatomic) int windMax;
@property (nonatomic, strong) NSString *tempMinWord;
@property (nonatomic, strong) NSString *tempMaxWord;
@property (nonatomic, strong) NSString *textDescription;
@property (nonatomic, strong) NSArray *placeArray;
@property (nonatomic, strong) NSArray *windArray;
@property (nonatomic) WeatherElements icon;

- (void)chooseWeatherIcon:(NSString*)phenomenon;
- (NSString*)spellOutWords:(int)ofNumber;
- (NSString*)tempMinFormatted;
- (NSString*)tempMaxFormatted;
- (NSString*)windMinFormatted;
- (NSString*)windMaxFormatted;
- (void)maxMinWindValues:(NSArray*)wind;
- (NSString*)temperatureAsPhrase;

@end
