//
//  Client.h
//  AddressBook
//
//  Created by Tor Ivry on 9/14/15.
//  Copyright (c) 2015 Tor Ivry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Addressbook.pb.h"

@interface Client : NSObject

-(AddressBook *) proto;

@end
