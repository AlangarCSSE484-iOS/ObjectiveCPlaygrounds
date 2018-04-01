//
//  BankAccount.h
//  Objective-C Playgrounds
//
//  Created by CSSE Department on 4/1/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic) double balance;

-(id) initWithName: (NSString*) name withBalance: (double) balance;
-(void) deposit: (double) amount;
-(void) withdraw: (double) amount;

@end
