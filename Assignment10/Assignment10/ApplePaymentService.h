//
//  ApplePaymentService.h
//  Assignment10
//
//  Created by ping tseng tsai on 2018-04-26.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface ApplePaymentService : NSObject <PaymentDelegate>

- (void) processPaymentAmount: (NSInteger) amount;
- (BOOL) canProcessPayment;

@end
