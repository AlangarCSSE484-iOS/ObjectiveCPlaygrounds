//
//  AtmBankAccount.m
//  Objective-C Playgrounds
//
//  Created by CSSE Department on 4/1/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "AtmBankAccount.h"

#define defaultFee 2.0

@interface AtmBankAccount ()
@property (nonatomic) double withdrawFee;
@end

@implementation AtmBankAccount

-(id) initWithName:(NSString*) name withBalance:(double) balance usingWithdrawFee:(double) withdrawFee{
    self.withdrawFee = withdrawFee;
    return [super initWithName:name withBalance:balance];
}

-(id) initWithName:(NSString *)name withBalance:(double)balance {
    self.withdrawFee = defaultFee;
    return [super initWithName:name withBalance:balance];
}

-(id) init {
    return [self initWithName:@"Anonymous" withBalance:0];
}

- (void)withdrawFee: (double) amount{
    [super withdraw:amount];
    self.balance -= self.withdrawFee;
}

-(NSString*) description {
    return [NSString stringWithFormat:@"%@ Withdraw fee: $%.2f", [super description], self.withdrawFee];
}

@end
