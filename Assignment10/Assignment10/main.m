//
//  main.m
//  Assignment10
//
//  Created by ping tseng tsai on 2018-04-26.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger amount = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld. \nPlease select your payment method: \n1: Paypal \n2: Stripe \n3: Amazon \n4: ApplePaymentService", amount);
        NSUInteger input = [[InputHandler getUserInputWithPrompt:@">>> "]integerValue];//conver string to integer
        PaymentGateway *gateway = [PaymentGateway new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        switch (input) {
            case 1:
                gateway.paymentDelegate = paypal;
                break;
            case 2:
                gateway.paymentDelegate = stripe;
                break;
            case 3:
                gateway.paymentDelegate = amazon;
                break;
            case 4:
                gateway.paymentDelegate = apple;
                break;
                
            default:
                break;
        }
        
        
        [gateway processPaymentAmount: amount];
        
        
    }
    return 0;
}
