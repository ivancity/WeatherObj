//
//  WeatherDataManager.h
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import "Forecast.h"
#import "Forecasts.h"
#import "Place.h"
#import "Wind.h"
#import "ForecastDate.h"

typedef NS_ENUM(NSInteger, XmlElements) {
    forecasts,
    forecast,
    night,
    day,
    phenomenon,
    tempmin,
    tempmax,
    text,
    place,
    name,
    direction,
    speedmin,
    speedmax,
    wind,
    lastNumber
};

@interface WeatherDataManager: NSObject<NSXMLParserDelegate>

@property (nonatomic, strong) NSXMLParser *xmlParser;
@property (nonatomic, strong) NSMutableArray *forecastsArray;
@property (nonatomic, strong) NSMutableArray *placeArray;
@property (nonatomic, strong) NSMutableArray *windArray;
@property (nonatomic, strong) Forecast *forecast;
@property (nonatomic, strong) ForecastDate *forecastDate;
@property (nonatomic, strong) Place *place;
@property (nonatomic, strong) Wind *wind;
@property (nonatomic) XmlElements currentElement;
@property (nonatomic, strong) Forecasts *forecasts;
@property (nonatomic, strong) NSString *tempString;

- (instancetype) initWithData:(NSData*)data;
- (NSString *) xmlElement:(XmlElements)name;
- (XmlElements) findXmlElement:(NSString*)fromString;
- (void) handle:(XmlElements)xmlElement data:(NSString*)data;
@end
