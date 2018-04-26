//
//  PaymentGateway.m
//  Assignment10
//
//  Created by ping tseng tsai on 2018-04-26.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway


- (void) processPaymentAmount: (NSInteger) amount{
    if([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount: amount];
    }else{
        NSLog(@"I am Sorry, your payment can not be processed at this moment");
    }
    
}

@end
