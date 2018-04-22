//
//  main.m
//  Assignment6
//
//  Created by ping tseng tsai on 2018-04-19.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

void roll(){
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSString *str = @"⚀⚁⚂⚃⚄⚅";//control + command +space
        
        
        GameController *player = [[GameController alloc] init];
        while ([player MAX_ROLL] > 0) {
            NSString *input = [InputHandler getUserInputWithPrompt:@"Enter 'roll' to roll the dice: "];
            if ([input isEqualToString:@"roll"]) {
                [player rollTheRest];
                while (YES) {
                    NSString *hold = [InputHandler getUserInputWithPrompt:@"Enter number to hold a die or 'q' to quit: "];
                    if ([hold isEqualToString:@"q"]) {
                        break;
                    }
                    [player holdDice: [hold integerValue]];
                }
                
            }else{
                break;
            }
        }
        [player displayDice];
    }
    return 0;
}
