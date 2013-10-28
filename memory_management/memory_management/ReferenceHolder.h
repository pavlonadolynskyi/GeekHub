//
//  ReferenceHolder.h
//  memory_management
//
//  Created by paul on 10/21/13.
//  Copyright (c) 2013 paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReferenceHolder : NSObject
@property (nonatomic, strong) NSObject * referencedObject;
@end
