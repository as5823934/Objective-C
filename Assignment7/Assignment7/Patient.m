//
//  Patient.m
//  Assignment7
//
//  Created by ping tseng tsai on 2018-04-23.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName: (NSString *)name andGender: (Gender) gender andAge: (NSInteger) age andHasHealthCard: (BOOL) healthCard andSymptoms: (NSString*) symptoms;
{
    self = [super init];
    if (self) {
        _name = name;
        _gender = gender;
        _age = age;
        _hasHelthCard = healthCard;
        _symptoms = symptoms;
        _assignedDoc = @"";
        _prescriptions = [NSMutableArray array];
    }
    return self;
}

-(BOOL) visitDoctor: (Doctor *) doc{
    NSLog(@"Hello Dr. %@, My name is %@. I need your help!", [doc name], _name);
    //Doctor should check patient's health card, add pat to the list
    return [doc addPatientIfHasValidHealthCard:self];
}

-(void) requestMedication: (Doctor *) doc{
    NSLog(@"Dr.%@: %@ has healed", [doc name], _symptoms);
}

-(void) addPrescriptions: (NSString *) prescriptions{
    [_prescriptions addObject: prescriptions];
}

@end
