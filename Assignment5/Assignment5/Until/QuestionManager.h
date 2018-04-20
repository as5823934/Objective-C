//
//  QuestionManager.h
//  Assignment5
//
//  Created by ping tseng tsai on 2018-04-19.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;
- (void) addQuestions: (Question *) question;
+ (QuestionManager *) manager;
- (NSString *)timeOutput;

@end
