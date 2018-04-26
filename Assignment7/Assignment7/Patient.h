//
//  Patient.h
//  Assignment7
//
//  Created by ping tseng tsai on 2018-04-23.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

typedef enum : NSUInteger {
    MALE,
    FEMALE
} Gender;


@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) Gender gender;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL hasHelthCard;
@property (nonatomic, strong) NSString *symptoms;
@property (nonatomic, strong) NSMutableArray *prescriptions;
@property (nonatomic, strong) NSString *assignedDoc;

- (instancetype)initWithName: (NSString *)name andGender: (Gender) gender andAge: (NSInteger) age andHasHealthCard: (BOOL) healthCard andSymptoms: (NSString*) symptoms;
-(BOOL) visitDoctor: (Doctor *) doc;
-(void) requestMedication: (Doctor *) doc;
-(void) addPrescriptions: (NSString *) prescriptions;


@end
