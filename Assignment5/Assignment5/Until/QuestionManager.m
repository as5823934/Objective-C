//
//  QuestionManager.m
//  Assignment5
//
//  Created by ping tseng tsai on 2018-04-19.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];//[[NSMutableArray alloc] init]
    }
    return self;
}

//we can call [QuestionManager manager] in main.m intead of [[QuestionManager alloc]init]
+ (QuestionManager *) manager{ //class method
    return [[QuestionManager alloc]init];
}

- (void) addQuestions: (Question *) question{
    [_questions addObject:question];
}

- (NSString *)timeOutput{
    //_question   last question(endtime)-first question(starttime) = totoal time;
    // [_question count] ==> the number of question;
    
    Question *lastQ = [_questions lastObject];
    Question *firstQ = [_questions firstObject];
    NSTimeInterval total = [lastQ.endTime timeIntervalSinceDate: firstQ.startTime];
    NSUInteger numQ = [_questions count]; //unsigned integer
    NSString *result = [NSString stringWithFormat:@"total time: %.2fs, average time: %.2fs", total, total / numQ];
    return  result;

}

@end
