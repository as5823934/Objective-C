//
//  main.m
//  Assignment1
//
//  Created by ping tseng tsai on 2018-04-16.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

void menu(){
    NSLog(@"");
    NSLog(@"");
    NSLog(@"String Converter!");
    NSLog(@"1. Uppercase");
    NSLog(@"2. Lowercase");
    NSLog(@"3. Numberise");
    NSLog(@"4. Canadianize");
    NSLog(@"5. Resopnd");
    NSLog(@"6. De-Space-it");
   
}

NSString * getUserInput(NSString *prompt){
    // 255 unit long array of characters
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);// limit input to max 255 characters
    NSString *inputString = [NSString stringWithUTF8String:inputChars];// convert char array to an NSString object
    
    return  [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while(YES){
            menu();
            NSString *option = getUserInput(@"Select the following Option: ");
//            NSLog(@"%@", input); // obj-c string star with @sign
           
            NSString *userInput = getUserInput(@"Enter your String: ");
            if ([option isEqualToString: @"1"]) {
                NSLog(@"%@", [userInput uppercaseString]);
            }else if ([option isEqualToString: @"2"]) {
                NSLog(@"%@", [userInput lowercaseString]);
            }else if ([option isEqualToString: @"3"]) {
                NSScanner* scan = [NSScanner scannerWithString:userInput];
                int val;
                if ([scan scanInt:&val] && [scan isAtEnd ]) {
                    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
                    f.numberStyle = NSNumberFormatterDecimalStyle;
                    NSNumber *myNumber = [f numberFromString:userInput];
                    NSLog(@"Convered to a number @%@", myNumber);
                
                } else {
                    NSLog(@"Invalid number");
                }
            }else if ([option isEqualToString: @"4"]) {
                NSLog(@"%@", [userInput stringByAppendingString:@", eh?"]);
            }else if([option isEqualToString: @"5"]) {
                if ([[userInput substringFromIndex:[userInput length] -1] isEqualToString:@"?"]) {
                    NSLog(@"I dont know");
                }else if([[userInput substringFromIndex:[userInput length] -1] isEqualToString:@"!"]){
                    NSLog(@"Whoa, calm down");
                }
            }else if([option isEqualToString: @"6"]){
                NSLog(@"%@", [userInput stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            }else {
                NSLog(@"Wrong input, please enter a number from 1 to 6");
            }
        }

    }
    return 0;
}
