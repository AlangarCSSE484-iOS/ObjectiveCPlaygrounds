//
//  Variables.h
//  Objective-C Playgrounds
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h> 

@interface Variables : NSObject

// Class Method
+ (void) run;

// Instance Method
- (void) exampleInstanceMethod;


// Properties

@property (nonatomic, strong) NSNumber* myNumber;
@property (nonatomic, copy) NSString* myString;
@property (nonatomic) int myInt;



@end
