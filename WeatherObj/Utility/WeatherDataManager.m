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

- (void) handle:(XmlElements)xmlElement data:(NSString *)data {
    
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
    if ((self.currentElement < 0) && (self.currentElement >= lastNumber)){
        return;
    }
    switch (self.currentElement) {
        case phenomenon:
            [self handle: phenomenon data: string];
            break;
        case tempmin:
            [self handle: tempmin data: string];
            break;
        case tempmax:
            [self handle: tempmax data: string];
            break;
        case text:
            [self handle: text data: string];
            break;
        case name:
            [self handle: name data: string];
            break;
        case speedmin:
            [self handle: speedmin data: string];
            break;
        case speedmax:
            [self handle: speedmax data: string];
            break;
        case direction:
            [self handle: direction data: string];
            break;
        default:
            NSLog(@"foundCharacters not handled: ");
    }
}

- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    XmlElements xmlElement = [self findXmlElement:elementName];
    switch (xmlElement) {
        case place:
            if (self.place) {
                if (self.placeArray) {
                    [self.placeArray addObject:self.place];
                }
            }
            self.place = nil;
            break;
        case wind:
            if (self.wind) {
                if (self.windArray) {
                    [self.windArray addObject:self.wind];
                }
            }
            self.wind = nil;
            break;
        case night:
            if (self.forecastDate) {
                self.forecastDate.placeArray = self.placeArray;
                self.forecastDate.windArray = self.windArray;
            }
            if (self.forecast) {
                self.forecast.night = self.forecastDate;
            }
            self.placeArray = nil;
            self.windArray = nil;
            self.forecastDate = nil;
            self.tempString = nil;
            break;
        case day:
            if (self.forecastDate) {
                self.forecastDate.placeArray = self.placeArray;
                self.forecastDate.windArray = self.windArray;
            }
            if (self.forecast) {
                self.forecast.day = self.forecastDate;
            }
            self.forecastDate = nil;
            self.placeArray = nil;
            self.windArray = nil;
            self.tempString = nil;
            break;
        case forecast:
            if (self.forecast) {
                if (self.forecastsArray) {
                    [self.forecastsArray addObject:self.forecast];
                }
            }
            self.forecast = nil;
            break;
        case forecasts:
            if (self.forecasts) {
                self.forecasts.forecasts = self.forecastsArray;
            }
            self.forecastsArray = nil;
            break;
        default:
            self.tempString = nil;
    }
}

- (void) parserDidEndDocument:(NSXMLParser *)parser {
    NSLog(@"didEndXmlDocument");
}

@end
