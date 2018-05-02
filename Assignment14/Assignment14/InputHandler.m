//
//  InputHandler.m
//  Assignment3
//
//  Created by ping tseng tsai on 2018-04-17.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString*) getUserInputWithPrompt: (NSString *) prompt{
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);// limit input to max 255 characters
    NSString *inputString = [NSString stringWithUTF8String:inputChars];// convert char array to an NSString object
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]; //get all space and newline then rid of them
    
    return trimmedString;
}

@end
