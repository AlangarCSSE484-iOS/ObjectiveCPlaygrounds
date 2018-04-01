//
//  BankAccount.m
//  Objective-C Playgrounds
//
//  Created by CSSE Department on 4/1/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount

-(id) initWithName: (NSString*) name withBalance: (double) balance{
    self = [super init];
    if (self){
        self.name = name;
        self.balance = balance;
    }
    return self;
}

-(void) deposit: (double) amount{
    self.balance += amount;
}

-(void) withdraw: (double) amount{
    self.balance -= amount;
}

    //description
-(NSString*) description {
    return [NSString stringWithFormat:@"Name: %@ and Balance: $%.2f", self.name, self.balance];
}
@end
