//
//  Doctor.m
//  Assignment7
//
//  Created by ping tseng tsai on 2018-04-23.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName: (NSString *) name andSpectialty: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientList = [NSMutableArray array];
    }
    return self;
}

-(BOOL) addPatientIfHasValidHealthCard: (Patient *) pat{
    NSLog(@"%@: Let me see your health card.", _name);
    if ([pat hasHelthCard]) {
        [_patientList addObject: pat];
        NSLog(@"%@: You have valid health card, now you are my patient!", _name);
        [pat setAssignedDoc:_name];
        return YES;
    }else{
        NSLog(@"%@: You don't have a valid health card. Please come back with a valid health card", _name);
        return NO;
    }
    
}

- (void) writePrescriptions: (Patient *) pat{
    NSLog(@"Dr.%@: What symptoms do you have?", _name);
    NSLog(@"%@: I have %@", [pat name], [pat symptoms]);
    NSString *prescription = [NSString stringWithFormat:@"prescription: %@", [pat symptoms]];
    [pat addPrescriptions: prescription];
    NSLog(@"Dr.%@: prescription added.", _name);
    NSLog(@"%@: Thank you Dr. %@.", [pat name], _name);
}

- (BOOL) checkPreviousDoctor: (Patient *) pat{
    if ([_name isEqualToString:[pat assignedDoc]]) {
        [self checkIfHasPatient:pat];
        [self writePrescriptions:pat];
        return YES;
    } else{
        NSLog(@"%@: Sorry, I am not your Doctor", _name);
        return NO;
    }
    
}

-(BOOL) checkIfHasPatient: (Patient *) pat{
    for(Patient *p in _patientList){
        if ([[p name] isEqualToString: [pat name]]) {
            return YES;
        }
    }
    return NO;
}

-(void) checkPrescriptionHistory: (Patient *) pat{
    NSLog(@"%@: Let me check your prescriptions.", _name);
    NSMutableString *history = [[NSMutableString alloc] init];
    for(NSString *p in [pat prescriptions]){
        [history appendString: p];
    }
}

@end
