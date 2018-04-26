//
//  Doctor.h
//  Assignment7
//
//  Created by ping tseng tsai on 2018-04-23.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patientList;
@property (nonatomic, assign) BOOL isAccept;

- (instancetype)initWithName: (NSString *) name andSpectialty: (NSString *) specialization;
-(BOOL) addPatientIfHasValidHealthCard: (Patient *) pat;
- (void) writePrescriptions: (Patient *) pat;
- (BOOL) checkPreviousDoctor: (Patient *) pat;
-(BOOL) checkIfHasPatient: (Patient *) pat;
-(void) checkPrescriptionHistory: (Patient *) pat;

@end
