//
//  StripePaymentService.m
//  Assignment10
//
//  Created by ping tseng tsai on 2018-04-26.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void) processPaymentAmount: (NSInteger) amount{
    NSLog(@"Stripe processed amount $%ld", amount);
}

- (BOOL) canProcessPayment{
    return arc4random_uniform(2) == 1;
}
@end
