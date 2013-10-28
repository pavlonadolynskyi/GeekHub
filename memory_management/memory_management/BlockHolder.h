//
//  BlockHolder.h
//  memory_management
//
//  Created by paul on 10/21/13.
//  Copyright (c) 2013 paul. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^Block)(void);

@interface BlockHolder : NSObject
@property (nonatomic, copy) Block block;
@end
