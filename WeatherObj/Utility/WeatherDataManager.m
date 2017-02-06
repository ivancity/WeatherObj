//
//  WeatherDataManager.m
//  WeatherObj
//
//  Created by MC_test on 06/02/2017.
//  Copyright © 2017 MC_test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherDataManager.h"

NSString *const kForecasts = @"forecasts";
NSString *const kForecast = @"forecast";
NSString *const kNight = @"night";
NSString *const kDay = @"day";
NSString *const kPhenomenon = @"phenomenon";
NSString *const kTempmin = @"tempmin";
NSString *const kTempmax = @"tempmax";
NSString *const kText = @"text";
NSString *const kPlace = @"place";
NSString *const kName = @"name";
NSString *const kDirection = @"direction";
NSString *const kSpeedmin = @"speedmin";
NSString *const kSpeedmax = @"speedmax";
NSString *const kWind = @"wind";

@implementation WeatherDataManager

- (instancetype) initWithData:(NSData *)data {
    self = [super init];
    if(self) {
        self.xmlParser = [[NSXMLParser alloc] initWithData:data];
        if (self.xmlParser) {
            self.xmlParser.delegate = self;
            [self.xmlParser parse];
        } else {
            NSLog(@"NSXMLParser error");
        }
    }
    return self;

}

- (NSString *) xmlElement:(XmlElements)name {
    __strong NSString **pointer = (NSString **)&kForecasts;
    pointer += name;
    return *pointer;
}

- (XmlElements) findXmlElement:(NSString *)fromString {
    NSString *currentString;
    for (int i = 0; i < lastNumber; i++) {
        currentString = [self xmlElement:(XmlElements)i];
        if ([currentString isEqualToString:fromString]) {
            return (XmlElements)i;
        }
    }
    return lastNumber;
}
// NSXMLParserDelegate implementation

- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
    
    XmlElements xmlElement = [self findXmlElement:elementName];
    switch (xmlElement) {
        case forecasts: {
            self.forecastsArray = [NSMutableArray new];
            self.forecasts = [[Forecasts alloc] init];
            break;
        }
        case forecast: {
            self.forecast = [[Forecast alloc] init];
            NSString *date = attributeDict[@"date"];
            if (date != nil) {
                self.forecast.date = date;
            }
            break;
        }
        case night:
            self.forecastDate = [[ForecastDate alloc] init];
            self.placeArray = [NSMutableArray new];
            self.windArray = [NSMutableArray new];
            break;
        case day:
            self.forecastDate = [[ForecastDate alloc] init];
            self.placeArray = [NSMutableArray new];
            self.windArray = [NSMutableArray new];
            break;
        case place:
            self.place = [[Place alloc] init];
            break;
        case wind:
            self.wind = [[Wind alloc] init];
            break;
        case phenomenon:
            self.currentElement = phenomenon;
            break;
        case tempmin:
            self.currentElement = tempmin;
            break;
        case tempmax:
            self.currentElement = tempmax;
            break;
        case text:
            self.currentElement = text;
            break;
        case name:
            self.currentElement = name;
            break;
        case speedmin:
            self.currentElement = speedmin;
            break;
        case speedmax:
            self.currentElement = speedmax;
            break;
        case direction:
            self.currentElement = direction;
            break;
        default:
            break;
    }
}

- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
}

- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
}

- (void) parserDidEndDocument:(NSXMLParser *)parser {
    NSLog(@"didEndXmlDocument");
}

@end
