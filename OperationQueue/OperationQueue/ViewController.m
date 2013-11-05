//
//  ViewController.m
//  OperationQueue
//
//  Created by Pavlo Nadolinskyi on 11/5/13.
//  Copyright (c) 2013 Pavlo Nadolinskyi. All rights reserved.
//

#import "ViewController.h"
#import "HeavyOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
//	NSURLRequest  *request = nil;
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
//        
//    }];
//    NSOperationQueue * operationQueue = [NSOperationQueue mainQueue];
//    [operationQueue setMaxConcurrentOperationCount:1];
//    for (int i = 0; i < 10; i++) {
//        HeavyOperation * operation = [[HeavyOperation alloc] init];
//        [operationQueue addOperation:operation];
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
