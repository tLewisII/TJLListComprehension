//
//  TJLListComprehension.h
//  TJLListComprehension
//
//  Created by Terry Lewis II on 4/25/14.
//  Copyright (c) 2014 Blue Plover Productions LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TJLListComprehension : NSObject
/**
* A list comprehension. Takes a list of NSFastEnumerations and performs nested iteration from right to left,
* applying first the function in `predicate` to each element, and if that returns YES, then applies the function in `block`
* to that element, adding the return value to a new list.
*
* @param enumeration A list of lists that conform to NSFastEnumeration.
* @param block A var arg block function. the number of arguments must match the number if lists passed to the enumeration param.
* @param predicate A var arg block that returns a BOOL. Use this to filter the elements that will be added to the new list.
* @return An NSArray that is the result of iterating all the list and applying both `predicate` and `block` to all the elements.
*/
+ (NSArray *)listComprehensionWithLists:(id <NSFastEnumeration>)enumeration function:(id)block predicate:(id)predicate;

/**
* A list comprehension. Takes a list of NSFastEnumerations and performs nested iteration from right to left,
* applying the function in `block` to each element, adding the return value to a new list.
*
* @param enumeration A list of lists that conform to NSFastEnumeration.
* @param block A var arg block function. the number of arguments must match the number if lists passed to the enumeration param.
* @return An NSArray that is the result of iterating all the list and applying `block` to all the elements.
*/
+ (NSArray *)listComprehensionWithLists:(id <NSFastEnumeration>)enumeration function:(id)block;
@end
