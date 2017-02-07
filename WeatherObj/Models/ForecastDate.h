//
//  ForecastDate.h
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

@interface ForecastDate : NSObject
@property (nonatomic, strong) NSString *phenomenon;
@property (nonatomic) int tempMin;
@property (nonatomic) int tempMax;
@property (nonatomic) int windMin;
@property (nonatomic) int windMax;
@property (nonatomic, strong) NSString *tempMinFormatted;
@property (nonatomic, strong) NSString *tempMaxFormatted;
@property (nonatomic, strong) NSString *windMinFormatted;
@property (nonatomic, strong) NSString *windMaxFormatted;
@property (nonatomic, strong) NSString *tempMinWord;
@property (nonatomic, strong) NSString *tempMaxWord;
@property (nonatomic, strong) NSString *textDescription;
@property (nonatomic, strong) NSArray *placeArray;
@property (nonatomic, strong) NSArray *windArray;
@property (nonatomic, strong) NSString *tempPhrase;
@property (nonatomic, strong) NSString *icon;

- (void)setPhenomenon:(NSString*)phenomenon;
- (void)chooseWeatherIcon:(NSString*)phenomenon;
- (void)setTempMin:(int)tempMin;
@end
