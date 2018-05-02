//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Kitchen.h"
#import "Manager.h"
#import "newManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *manager = [Manager new];
        newManager *newManager2 = [newManager new];
        
        while (TRUE) {
            // Loop forever
            NSString *inputString = [InputHandler getUserInputWithPrompt:@"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];//"large ham pineapple cheese"
            NSString *size = commandWords[0];
            
            PizzaSize real_size;
            if ([size isEqualToString:@"Large"]) {
                real_size = Large;
            }else if([size isEqualToString:@"Medium"]){
                real_size = Medium;
            }else {
                real_size = Small;
            }
            
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] -1)];//makerange (strat from index, to length of started index)
            NSString *pickManager = [InputHandler getUserInputWithPrompt:@"Pick a manager:\n1. Manager A\n2. Manager B"];
            if ([pickManager isEqualToString:@"1"]) {
                restaurantKitchen.delegate = manager;
            }else{
                restaurantKitchen.delegate = newManager2;
            }
            
            Pizza *pizza;
            pizza = [restaurantKitchen makePizzaWithSize:real_size toppings:toppings];
            NSLog(@"%@", pizza);
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

