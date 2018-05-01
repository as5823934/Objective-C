//
//  main.m
//  Assignment13
//
//  Created by ping tseng tsai on 2018-04-30.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyStringInput.h"
#import "InputHandler.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *input = [InputHandler getUserInputWithPrompt:@"Enter a String..."];
        MyStringInput *string = [MyStringInput new];
//        NSLog(@"%@", input);
        NSLog(@"%@", [string stringByPigLatinization:input]);
//
//        NSString *myString = @"lets see how it works";
//
//        NSLog(@"%@", [string stringByPigLatinization: myString]);
    }
    return 0;
}
