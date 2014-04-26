//
//  TJLListComprehension.m
//  TJLListComprehension
//
//  Created by Terry Lewis II on 4/25/14.
//  Copyright (c) 2014 Blue Plover Productions LLC. All rights reserved.
//

#import "TJLListComprehension.h"

@interface TJLListComprehension ()

@end

@implementation TJLListComprehension

+ (NSArray *)listComprehensionWithLists:(id <NSFastEnumeration>)enumeration function:(id)block predicate:(id)predicate {
    NSUInteger count = 0;
    for(id e in enumeration) {
        NSAssert([e conformsToProtocol:@protocol(NSFastEnumeration)], @"Object \'%@\' does not conform to NSFastEnumeration", e);
        count++;
    }

    switch(count) {
        case 1:
            return [self performWith:enumeration function:block predicate:predicate];
        case 2:
            return [self performWith:enumeration[0] :enumeration[1] function:block predicate:predicate];
        case 3:
            return [self performWith:enumeration[0] :enumeration[1] :enumeration[2] function:block predicate:predicate];
        case 4:
            return [self performWith:enumeration[0] :enumeration[1] :enumeration[2] :enumeration[3] function:block predicate:predicate];
        case 5:
            return [self performWith:enumeration[0] :enumeration[1] :enumeration[2] :enumeration[3] :enumeration[4] function:block predicate:predicate];
        case 6:
            return [self performWith:enumeration[0] :enumeration[1] :enumeration[2] :enumeration[3] :enumeration[4] :enumeration[5] function:block predicate:predicate];
        default:
            break;
    }
    NSAssert(NO, @"No more than 6 arguments are supported");
    return nil;
}

+ (NSArray *)listComprehensionWithLists:(id <NSFastEnumeration>)enumeration function:(id)block {
    return [self listComprehensionWithLists:enumeration function:block predicate:nil];
}

+ (NSArray *)performWith:(id <NSFastEnumeration>)enumeration
                function:(id)bl
               predicate:(id)predicate {
    NSMutableArray *mutable = [NSMutableArray array];
    id (^block)(id) = [bl copy];
    BOOL (^pred)(id) = [predicate copy];
    for(id obj in enumeration) {
        if (predicate) {
            if (pred(obj)) {
                [mutable addObject:block(obj)];
            }
        } else [mutable addObject:block(obj)];
    }
    return [NSArray arrayWithArray:mutable];
}

+ (NSArray *)performWith:(id <NSFastEnumeration>)enumeration
        :(id <NSFastEnumeration>)enumeration1
                function:(id)bl
               predicate:(id)predicate {
    id (^block)(id, id) = [bl copy];
    BOOL (^pred)(id, id) = [predicate copy];
    NSMutableArray *mutable = [NSMutableArray array];
    for(id obj in enumeration) {
        for(id obj1 in enumeration1) {
            if (predicate) {
                if (pred(obj, obj1)) {
                    [mutable addObject:block(obj, obj1)];
                }
            } else [mutable addObject:block(obj, obj1)];
        }

    }
    return [NSArray arrayWithArray:mutable];
}

+ (NSArray *)performWith:(id <NSFastEnumeration>)enumeration
        :(id <NSFastEnumeration>)enumeration1
        :(id <NSFastEnumeration>)enumeration2
                function:(id)bl
               predicate:(id)predicate {
    id (^block)(id, id, id) = [bl copy];
    BOOL (^pred)(id, id, id) = [predicate copy];
    NSMutableArray *mutable = [NSMutableArray array];
    for(id obj in enumeration) {
        for(id obj1 in enumeration1) {
            for(id obj2 in enumeration2) {
                if (predicate) {
                    if (pred(obj, obj1, obj2)) {
                        [mutable addObject:block(obj, obj1, obj2)];
                    }
                } else [mutable addObject:block(obj, obj1, obj2)];
            }
        }
    }
    return [NSArray arrayWithArray:mutable];
}

+ (NSArray *)performWith:(id <NSFastEnumeration>)enumeration
        :(id <NSFastEnumeration>)enumeration1
        :(id <NSFastEnumeration>)enumeration2
        :(id <NSFastEnumeration>)enumeration3
                function:(id)bl
               predicate:(id)predicate {
    id (^block)(id, id, id, id) = [bl copy];
    BOOL (^pred)(id, id, id, id) = [predicate copy];
    NSMutableArray *mutable = [NSMutableArray array];
    for(id obj in enumeration) {
        for(id obj1 in enumeration1) {
            for(id obj2 in enumeration2) {
                for(id obj3 in enumeration3) {
                    if (predicate) {
                        if (pred(obj, obj1, obj2, obj3)) {
                            [mutable addObject:block(obj, obj1, obj2, obj3)];
                        }
                    } else [mutable addObject:block(obj, obj1, obj2, obj3)];
                }
            }
        }
    }
    return [NSArray arrayWithArray:mutable];
}

+ (NSArray *)performWith:(id <NSFastEnumeration>)enumeration
        :(id <NSFastEnumeration>)enumeration1
        :(id <NSFastEnumeration>)enumeration2
        :(id <NSFastEnumeration>)enumeration3
        :(id <NSFastEnumeration>)enumeration4
                function:(id)bl
               predicate:(id)predicate {
    id (^block)(id, id, id, id, id) = [bl copy];
    BOOL (^pred)(id, id, id, id, id) = [predicate copy];
    NSMutableArray *mutable = [NSMutableArray array];
    for(id obj in enumeration) {
        for(id obj1 in enumeration1) {
            for(id obj2 in enumeration2) {
                for(id obj3 in enumeration3) {
                    for(id obj4 in enumeration4) {
                        if (predicate) {
                            if (pred(obj, obj1, obj2, obj3, obj4)) {
                                [mutable addObject:block(obj, obj1, obj2, obj3, obj4)];
                            }
                        } else [mutable addObject:block(obj, obj1, obj2, obj3, obj4)];
                    }
                }
            }
        }
    }
    return [NSArray arrayWithArray:mutable];
}

+ (NSArray *)performWith:(id <NSFastEnumeration>)enumeration
        :(id <NSFastEnumeration>)enumeration1
        :(id <NSFastEnumeration>)enumeration2
        :(id <NSFastEnumeration>)enumeration3
        :(id <NSFastEnumeration>)enumeration4
        :(id <NSFastEnumeration>)enumeration5
                function:(id)bl
               predicate:(id)predicate {
    id (^block)(id, id, id, id, id, id) = [bl copy];
    BOOL (^pred)(id, id, id, id, id, id) = [predicate copy];
    NSMutableArray *mutable = [NSMutableArray array];
    for(id obj in enumeration) {
        for(id obj1 in enumeration1) {
            for(id obj2 in enumeration2) {
                for(id obj3 in enumeration3) {
                    for(id obj4 in enumeration4) {
                        for(id obj5 in enumeration5) {
                            if (predicate) {
                                if (pred(obj, obj1, obj2, obj3, obj4, obj5)) {
                                    [mutable addObject:block(obj, obj1, obj2, obj3, obj4, obj5)];
                                }
                            } else [mutable addObject:block(obj, obj1, obj2, obj3, obj4, obj5)];

                        }
                    }
                }
            }
        }
    }
    return [NSArray arrayWithArray:mutable];
}

@end
