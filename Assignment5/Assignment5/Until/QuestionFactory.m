//
//  QuestionFactory.m
//  Assignment5
//
//  Created by ping tseng tsai on 2018-04-19.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "QuestionFactory.h"
//#import "Question.h"
//#import "AdditionQuestion.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion",
                           @"SubstractionQuestion",
                           @"DivisionQuestion",
                           @"MultiplicationQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion{
    //polymorphism
//    Question *q = [[AdditionQuestion alloc] init];
//    [q generateQuestion];
    int index = arc4random_uniform(4);
    NSString *questionType = [_questionTypes objectAtIndex:index];
    //using string to create instance of the class
    Question *q =[[NSClassFromString(questionType)alloc] init];
    return q;
    
}

@end
