//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by ping tseng tsai on 2018-04-17.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        //get two random number
        //@"first + second"
        int num1 = arc4random_uniform(91) + 10; //10 - 100
        int num2 = arc4random_uniform(91) + 10;
        
        _question =[NSString stringWithFormat:@"%d + %d = ", num1, num2];
        _answer = num1 + num2;
    }
    return self;
}

@end
