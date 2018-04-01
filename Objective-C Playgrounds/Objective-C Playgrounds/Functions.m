//
//  Functions.m
//  Objective-C Playgrounds
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Functions.h"

@implementation Functions

+ (void) run {
    NSLog(@"fortuneCookie = %@", [Functions fortunCookie]);
    NSLog(@"fortuneCookie = %@", [Functions fortunCookie]);
    
    Functions* f = [[Functions alloc] init];
    NSLog(@"magic8Ball = %@", [f magic8Ball]);
    NSLog(@"magic8Ball = %@", [f magic8Ball]);
    
    NSLog(@"Superhero name = %@", [Functions superHeroName:@"Vibha"]);
    NSLog(@"Value = %f", [Functions calculateBoxVolulmeForLength:3.0 forWidth:4.0 forHeight:5.0]);
   // NSLog(@"Volume = %f", [Functions calculateBoxVolumeForLength:3.0 width:4.0 height:5.0]);
}

+ (NSString*) fortunCookie{
    int numFriends = (int)arc4random_uniform(300);
    return [NSString stringWithFormat:@"\nAt some point you'll have %d friends on Facebook.", numFriends];
}
- (NSString*) magic8Ball{
    int numFriends = (int)arc4random_uniform(10);
    return [NSString stringWithFormat:@"\nAt some point you'll have %d friends on Google+.", numFriends];
}
+ (NSString*) superHeroName: (NSString*) name{
    return [NSString stringWithFormat:@"Super %@!", [name uppercaseString]];
}
+ (double) calculateBoxVolulmeForLength:(double) length
                               forWidth:(double) width
                              forHeight:(double) height{
    return length*width*height;
}
@end
