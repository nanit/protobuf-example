//
//  AddressBookController.m
//  AddressBook
//
//  Created by Tor Ivry on 9/14/15.
//  Copyright (c) 2015 Tor Ivry. All rights reserved.
//

#import "AddressBookController.h"

@implementation AddressBookController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView setContentInset:UIEdgeInsetsMake(50,0,0,0)];

    self.client = [[Client alloc] init];
    [self reloadData];
}

- (void)reloadData {
    self.persons = [self.client proto].person;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.persons count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"AddressTableItem";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
    
    Person* person = [self.persons objectAtIndex:indexPath.row];
    cell.textLabel.text = person.name;
        
    cell.detailTextLabel.text =  person.email;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
