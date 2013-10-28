//
//  BlockHolder.m
//  memory_management
//
//  Created by paul on 10/21/13.
//  Copyright (c) 2013 paul. All rights reserved.
//

#import "BlockHolder.h"


@implementation BlockHolder

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"I am %p and have been created", self);
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
    NSLog(@"I am %p and have been deallocaed", self);
}

@end
