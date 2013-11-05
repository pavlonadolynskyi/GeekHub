//
//  HeavyOperation.m
//  OperationQueue
//
//  Created by Pavlo Nadolinskyi on 11/5/13.
//  Copyright (c) 2013 Pavlo Nadolinskyi. All rights reserved.
//

#import "HeavyOperation.h"

@implementation HeavyOperation

- (void)main
{
    NSLog(@"%p STARTED", self);
    for (int i = 0; i < 100000; i++) {
        NSLog(@"%p %@", self, [NSString stringWithFormat:@"%i %@", i, @(i / 10)]);
    }
    NSLog(@"%p FINISHED", self);
}

@end
