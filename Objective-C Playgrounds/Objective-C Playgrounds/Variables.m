//
//  Variables.m
//  Objective-C Playgrounds
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Variables.h"

// Constants
const int myConstantInt = 7;
#define myConstantDefine 8
//note no semicolon and no equals

NSString* const myConstantStr = @"Hello";
#define myConstantString @"World!"


// Internal property


@implementation Variables

+ (void) run {

    NSLog(@"--- Variables ---");

    // Primitives
    int x = 7;
    double d = 1.234;
    NSLog(@"x = %d   d = %f", x, d);

    // Objects (note the * symbol)
    NSString* myStr = @"Hello, World!";
    NSNumber* verboseNumber = [[NSNumber alloc] initWithInt:8];
    NSNumber* shorthandNumber = @9;
    NSLog(@"myStr = %@ numbers = %@ and %@" ,
          myStr, verboseNumber, shorthandNumber);


    // Constants
    NSLog(@"ints = %d and %d,  Strings = %@ and %@" ,
          myConstantInt, myConstantDefine, myConstantStr, myConstantString);



    // Sneaky primitives (note the LACK of a * symbol)
    NSInteger y = 10;
    _Bool b = YES;
    CGFloat z = 2.345;
    CGRect rect = CGRectMake(0, 0, 100.0, 100.0);
    
    NSLog(@"b = %d y = %ld, z = %f, width = %f" ,
          b, (long)y, z, rect.size.width);
    



    // Properties

}

@end
