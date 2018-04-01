//
//  Enums.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 1/5/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Enums.h"


@implementation Enums

+ (void) run {

    // Basic enum
    typedef NS_ENUM(NSInteger, Weekday) {
        WeekdayMonday,
        WeekdayTuesday,
        WeekdayWednesday,
        WeekdayThursday,
        WeekdayFriday
    };


    Weekday today = WeekdayWednesday;
    
    switch (today) {
        case WeekdayMonday:
        case WeekdayTuesday:
        case WeekdayThursday:
            NSLog(@"you have class");
            break;

        case WeekdayWednesday:
            NSLog(@"weekend wednesday!");
            break;

        case WeekdayFriday:
            NSLog(@"Enjoy your weekend!");
            break;
    }

    // Rawvalues
    
    NSLog(@"The raw value of today is %ld", (long)today);
    
}

@end
