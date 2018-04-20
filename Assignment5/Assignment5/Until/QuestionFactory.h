//
//  QuestionFactory.h
//  Assignment5
//
//  Created by ping tseng tsai on 2018-04-19.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Question;

@interface QuestionFactory : NSObject

@property (nonatomic, assign) NSArray *questionTypes;
- (Question *) generateRandomQuestion;

@end
