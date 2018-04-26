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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            NSString *inputString = [InputHandler getUserInputWithPrompt:@"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];//"large ham pineapple cheese"
            NSString *size = commandWords[0];
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] -1)];//makerange (strat from index, to length of started index)
            
            Pizza *pizza;
            if(([Pizza getPizzaSize: size] == Large) && ([toppings containsObject:@"perpperoni"]))
            {
                pizza = [Pizza largePepperoni];
            }else if([toppings containsObject:@"beef"] || [toppings containsObject:@"pork"] || [toppings containsObject:@"chicken"])
            {
                pizza = [Pizza meatLoversWithSize:[Pizza getPizzaSize: size]];
            }
            else
            {
                pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize: size] toppings: toppings];
            }
            NSLog(@"%@", pizza);
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

