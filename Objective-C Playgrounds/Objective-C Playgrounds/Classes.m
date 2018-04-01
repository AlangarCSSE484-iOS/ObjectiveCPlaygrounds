//
//  Classes.m
//  Objective-C Playgrounds
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Classes.h"
#import "BankAccount.h"


@implementation Classes

+ (void) run {
    // Simple Class
    BankAccount* vibhaAccount = [[BankAccount alloc] initWithName:@"Vibha" withBalance:100.0];
    NSLog(@"vibhaAccount %@", vibhaAccount);

    [vibhaAccount deposit:50.0];
    NSLog(@"vibhaAccount %@ ", vibhaAccount);
    [vibhaAccount withdraw:20.0];
    NSLog(@"vibhaAccount %@ ", vibhaAccount);


    // Subclass






}

@end
