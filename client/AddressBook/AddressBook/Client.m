//
//  Client.m
//  AddressBook
//
//  Created by Tor Ivry on 9/14/15.
//  Copyright (c) 2015 Tor Ivry. All rights reserved.
//

#import "Client.h"

@implementation Client

-(AddressBook *) proto
{
    // Proto Part

    NSLog(@"%@ %lu %lu %lu %lu",(sizeof(long) == 8 ? @"USING 64 bit system" : @"USING 32 bit system"),sizeof(int32_t), sizeof(long), sizeof(long long), sizeof(int64_t));

    NSData* raw_data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://0.0.0.0:4567/addresses"]];
    if (!raw_data)
    {
        NSLog(@"Please turn on the server");
        return nil;
    }

    AddressBook* addressBook;
    NSLog(@"proto content size %@",[NSByteCountFormatter stringFromByteCount:raw_data.length countStyle:NSByteCountFormatterCountStyleMemory]);

    addressBook = [AddressBook parseFromData:raw_data];
    NSLog(@"%@", addressBook);
    return addressBook;
}


@end
