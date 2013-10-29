//
//  ViewController.h
//  BlocksNThreads
//
//  Created by Pavlo Nadolinskyi on 10/29/13.
//  Copyright (c) 2013 Pavlo Nadolinskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef int(^BlockType)(int i);

@interface ViewController : UIViewController
@property (nonatomic, strong) BlockType block;
@end
