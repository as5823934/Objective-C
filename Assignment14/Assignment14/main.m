//
//  main.m
//  Assignment14
//
//  Created by ping tseng tsai on 2018-05-01.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Player *p1 = [Player new];
        
        while(![p1 gameOVer]){
            NSString *input = [InputHandler getUserInputWithPrompt:@"\nEnter 'roll' to start the game\nEnter 'quit' to stop"];
            if ([input isEqualToString:@"roll"]) {
                [p1 roll];
            }else if ([input isEqualToString:@"quit"]){
                NSLog(@"game stoped");
                break;
            }
        }
    }
    return 0;
}
