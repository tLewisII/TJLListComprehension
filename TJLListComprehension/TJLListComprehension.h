//
//  TJLListComprehension.h
//  TJLListComprehension
//
//  Created by Terry Lewis II on 4/25/14.
//  Copyright (c) 2014 Blue Plover Productions LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TJLListComprehension : NSObject
+ (NSArray *)listComprehensionWithArrays:(id <NSFastEnumeration>)enumeration function:(id)block;
@end
