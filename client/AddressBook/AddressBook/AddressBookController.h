//
//  AddressBookController.h
//  AddressBook
//
//  Created by Tor Ivry on 9/14/15.
//  Copyright (c) 2015 Tor Ivry. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Client.h"
#import "Addressbook.pb.h"

@interface AddressBookController: UITableViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) Client* client;
@property (nonatomic) NSArray* persons;


@end
