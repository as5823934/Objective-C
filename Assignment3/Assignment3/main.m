//
//  main.m
//  Assignment3
//
//  Created by ping tseng tsai on 2018-04-17.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "Scorekeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        Scorekeeper *sk = [[Scorekeeper alloc] init];
        NSLog(@"MATH!");
        
        while(gameOn){
            
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            //get userinput
            NSString *input = [InputHandler getUserInput: [q1 question]];
            //if user input == quit
            if ([input isEqualToString:@"quit"]) {
                gameOn = NO;
                break;
            }
            NSString *answer = [NSString stringWithFormat:@"%ld", [q1 answer]]; //convert int to NSString
            if([input isEqualToString: answer]){
                NSLog(@"You are right!");
                [sk setRights: [sk rights] + 1];
            }else{
                NSLog(@"You are Wrong!");
                [sk setWrongs: [sk wrongs] + 1];
            }
            //break or gameOn == NO
        }
        [sk displayResult];
    }
    return 0;
}
