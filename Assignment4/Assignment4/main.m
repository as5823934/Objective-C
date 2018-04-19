//
//  main.m
//  Assignment4
//
//  Created by ping tseng tsai on 2018-04-18.
//  Copyright © 2018 ping tseng tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"
#import "PhoneNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //REPL : Read Evaluate Print Loop
        BOOL isOn = YES;
        ContactList *list = [[ContactList alloc] init];
        
        NSString *menu = @"What would you want to do next? \nnew - Creat a new contact\nlist - List all contacts\nshow i - search index\nfind - search name\nhistory - print last 3 command\nquit - Exit Application\n>>> ";
        NSMutableArray *commands = [NSMutableArray array];
        while(isOn)
        {
            NSString *input = [InputHandler getUserInputWithPrompt: menu];
            NSArray *splite = [input componentsSeparatedByString:@" "];
            if([input isEqualToString:@"quit"])
            {
                isOn = NO;
                break;
            }else if ([input isEqualToString:@"new"])
            {
                NSString *name = [InputHandler getUserInputWithPrompt: @"\nEnter the name: "];
                NSString *email = [InputHandler getUserInputWithPrompt: @"\nEnter the email: "];
                NSString *label = [InputHandler getUserInputWithPrompt: @"\nWhat kind of phone number (work, home, mobile, etc): "];
                NSString *number = [InputHandler getUserInputWithPrompt: @"\nEnter the phone number: "];
                //bouns 3 - prevent duplicate
                BOOL nameExist = [list shouldHaveContactWith:name];
                BOOL emailExist = [list shouldHaveContactWith:email];
                if (!nameExist && !emailExist) {
                    Contact *newContact = [[Contact alloc] initWithName:name andEmail:email];
                    PhoneNumber *pnumber = [[PhoneNumber alloc] initWithLabel:label AndDigits:number];
                    [newContact addPhoneNumber: pnumber];
                    while (YES) {
                        NSString *ans = [InputHandler getUserInputWithPrompt: @"More phone number? (y/n) "];
                        if ([ans isEqualToString:@"y"]){
                            NSString *label = [InputHandler getUserInputWithPrompt: @"\nWhat kind of phone number (work, home, mobile, etc): "];
                            NSString *number = [InputHandler getUserInputWithPrompt: @"\nEnter the email phone number: "];
                            PhoneNumber *pnumber = [[PhoneNumber alloc] initWithLabel:label AndDigits:number];
                            [newContact addPhoneNumber: pnumber];
                        } else {
                            break;
                        }
                    }
                    [list addContact:newContact];
                }else{
                    NSLog(@"Contact Exists");
                }
                
            }else if ([input isEqualToString:@"list"])
            {
                //print all contact in mutablArray
                NSMutableArray *contacts = [list contacts];//== contact list.getContacts()
                
                //loop contact and print one by one
                NSInteger index = 0;
                //like in java for each
                
                
                for (Contact *contact in contacts) {
                    NSLog(@"%ld: <%@> (%@) ---(%@)", index, [contact name], [contact email], [contact phoneNumber]); //contact.getname()
                    index++;
                }
            }else if([[splite objectAtIndex: 0] isEqualToString:@"show"])//bouns 1
            {
                NSString *index = [splite objectAtIndex: 1];
                NSMutableArray *contacts = [list contacts];
                NSInteger i = [index integerValue];
                if (i >= [contacts count] || i < 0) {
                    NSLog(@"Not found");
                }else {
                    Contact *contact = [contacts objectAtIndex: i];
                    NSLog(@"%@: <%@> (%@)", index, [contact name], [contact email]);
                }
                
                
            }else if([[splite objectAtIndex: 0] isEqualToString:@"find"])//bouns 2
            {
//                NSInteger index = 0;
                NSString *keyword = [splite objectAtIndex: 1];
//                NSMutableArray *contacts = [list contacts];
//                for (Contact *contact in contacts) {
//                    //compare name or email
//                    if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString:keyword]) {
//                        NSLog(@"%ld: <%@> (%@) Mobile: (%@)", index, [contact name], [contact email], [contact phone]);
//                    }
//                    index++;
//                }
                
                Contact *found = [list findContact:keyword];
                if (found != nil) {
                    NSLog(@"<%@> (%@)", [found name], [found email]);
                }else{
                    NSLog(@"Not match");
                }
                
            }else if([input isEqualToString:@"history"])//bouns 5
            {
                for(int i = (int) commands.count - 3; i < commands.count; i++) {
                    NSLog(@"%@", [commands objectAtIndex: i]);
                }
                
            }
        }
    }
    return 0;
}
