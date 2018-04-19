//
//  ContactList.h
//  Assignment4
//
//  Created by ping tseng tsai on 2018-04-18.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h" // use for search dupulicate
@class Contact; //tell compiler we have this class

@interface ContactList : NSObject

@property(nonatomic, strong)NSMutableArray *contacts;
- (instancetype)init;
- (void) addContact: (Contact *) newContact;
- (BOOL) shouldHaveContactWith: (NSString *) keyword;
- (Contact *) findContact: (NSString *) keyword;


@end
