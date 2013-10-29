//
//  ViewController.m
//  BlocksNThreads
//
//  Created by Pavlo Nadolinskyi on 10/29/13.
//  Copyright (c) 2013 Pavlo Nadolinskyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
//    [self hardMethod];
//    
//	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//
//    });
//    [[[UIAlertView alloc] initWithTitle:@"Success!" message:@"" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"ok", nil] show];
//
//    dispatch_async(dispatch_get_main_queue(), ^{
//        
//    });
//    
//    int(^divideByTwo)(int) = ^(int number) {
//        return number / 2;
//    };
//
//    NSLog(@"%i", divideByTwo(10));
//
//    self.block = ^(int number) {
//        return number / 3;
//    };
//
//    NSLog(@"%i", self.block(9));
//    
//    NSURL * requestURL = [NSURL URLWithString:@"http://mooncity.podfm.ru/rss/rss.xml"];
//    NSURLRequest * request = [NSURLRequest requestWithURL:requestURL];
//    
//    NSError * error = nil;
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
//        if (error) {
//            NSLog(@"%@", error);
//        }
//    }];
//    
}

- (void)hardMethod
{
    for (int i = 0; i < 1000000000; i++) {
        NSLog(@"%@", [NSString stringWithFormat:@"%i %@", i, @(i / 10)]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
