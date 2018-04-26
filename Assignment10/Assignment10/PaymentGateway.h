//
//  PaymentGateway.h
//  Assignment10
//
//  Created by ping tseng tsai on 2018-04-26.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate
- (void) processPaymentAmount: (NSInteger) amount;
- (BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject

@property(nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void) processPaymentAmount: (NSInteger) amount;

@end
