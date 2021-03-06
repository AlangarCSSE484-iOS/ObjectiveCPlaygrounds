//
//  Collections.m
//  Objective-C Playgrounds
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Collections.h"

@implementation Collections

+ (void) run {
    // Basics for arrays
    NSArray* names = @[@"Vibha", @"Kiana", @"Billy Bob Joe"];
    NSLog(@"names[1] = %@", names[1]);
    //names[2] = @"Steve"; doesn't work
    NSLog(@"names = %@ and has %d elements", names, names.count);


    // Mutable Arrays (appending and removing values)
    NSMutableArray* ages = [[NSMutableArray alloc] init];
    [ages addObject:@21];
    [ages addObject:@17];
    [ages addObject:@112];
    
    ages[1] = @13;
    [ages insertObject:@452 atIndex:1];
    [ages removeLastObject];
    NSLog(@"names = %@", ages);


    // So, so, SO.. many things you could do with arrays...
    NSMutableArray* randomAges = [[NSMutableArray alloc] init];
    for (int i = 0; i < 4; i++) {
        [randomAges addObject:[[NSNumber alloc] initWithUnsignedLong:arc4random_uniform(90)]];
    }
    NSLog(@"randomAges = %@", randomAges);
    NSArray* sortedAges = [randomAges sortedArrayUsingComparator:^NSComparisonResult(NSNumber* obj1, NSNumber* obj2) {
        return [obj1 compare:obj2];
    }];
    NSLog(@"sortedAges = %@", sortedAges);


    // Dictionaries
    NSDictionary* elements = @{@"H": @"Hydrogen", @"He": @"Helium", @"Li": @"Lithium", @"Be": @"Beryllium", @"B": @"Boron", @"C": @"Carbon", @"N": @"Nitrogen", @"O": @"Oxygen"};
    NSLog(@"element['C'] = %@", [elements objectForKey:@"C"]);
    NSLog(@"element['Z'] = %@", [elements objectForKey:@"Z"]);
    for (NSString* symbol in elements) {
        if ([symbol isEqualToString:@"H"] || [symbol isEqualToString:@"O"]) {
            NSLog(@"%@ is present in water.", [elements objectForKey:symbol]);
        }
    }
}

@end
