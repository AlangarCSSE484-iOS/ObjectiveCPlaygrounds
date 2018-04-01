//
//  AtmBankAccount.h
//  Objective-C Playgrounds
//
//  Created by CSSE Department on 4/1/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "BankAccount.h"



@interface AtmBankAccount : BankAccount

-(id) initWithName:(NSString*) name
       withBalance:(double) balance
  usingWithdrawFee:(double) withdrawFee;

@end
