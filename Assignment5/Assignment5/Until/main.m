//
//  main.m
//  Assignment5
//
//  Created by ping tseng tsai on 2018-04-19.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Question.h"
#import "InputHandler.h"
#import "Scorekeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        Scorekeeper *sk = [[Scorekeeper alloc] init];
        QuestionManager *qm = [QuestionManager manager];
        QuestionFactory *qf = [[QuestionFactory alloc]init];
        NSLog(@"MATH!");
        
        while(gameOn){
            
            Question *q1 = [qf generateRandomQuestion];
            //get userinput
            NSString *input = [InputHandler getUserInput: [q1 question]];
            //if user input == quit
            if ([input isEqualToString:@"quit"]) {
                gameOn = NO;
                //break or gameOn == NO
            }
            NSString *answer = [NSString stringWithFormat:@"%ld", [q1 answer]]; //convert int to NSString
            [qm addQuestions:q1];//add question to q1 manger
            if([input isEqualToString: answer]){
                NSLog(@"You are right!");
                [sk setRights: [sk rights] + 1];
            }else{
                NSLog(@"You are Wrong!");
                [sk setWrongs: [sk wrongs] + 1];
            }
        }
        [sk displayResult];
        NSLog(@"%@", [qm timeOutput]);
    }
    return 0;
}

