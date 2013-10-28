//
//  ViewController.m
//  memory_management
//
//  Created by paul on 10/21/13.
//  Copyright (c) 2013 paul. All rights reserved.
//

#import "ViewController.h"
#import "ReferenceHolder.h"
#import "BlockHolder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
//    ReferenceHolder * a = [[ReferenceHolder new] autorelease];
//    ReferenceHolder * b = [[ReferenceHolder new] autorelease];
//    a.referencedObject = b;
//    b.referencedObject = a;
    
//    BlockHolder * blockHolder = [[[BlockHolder alloc] init] autorelease];
//    blockHolder.block = ^(void){
//        NSLog(@"%@", blockHolder);
//    };
//    __block BlockHolder * weakBlockHolder = blockHolder;
//    blockHolder.block = ^(void){
//        NSLog(@"%@", weakBlockHolder);
//    };
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
