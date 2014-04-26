TJLListComprehension
===========
List comprehensions for Objective-C.

Usage
===========
List comprehensions, as available in many other languages, are quite useful for building up lists out of other lists.
Here is a simple example in Haskell:

```
[[a,b] | a <- [1,2,3], b <- [4,5,6]]
[[1,4],[1,5],[1,6],[2,4],[2,5],[2,6],[3,4],[3,5],[3,6]]
```
A comprehension takes a function and one or more lists, and returns a new list. Lists passed to the comprehension are enumerated from right to left in a nested fashion, that is, if you take the above example and translate it to vanilla Objecive-C it would look like this:

```
NSMutableArray array = [NSMutableArray array];
for(id obj in @[@1,@2,@3]) {
  for(id obj1 in @[@4,@5,@6]) {
    array addObject:@[obj, obj1]];
  }
}
```
The plain Obj-C version is quite a bit more verbose and cumbersome. In comes TJLListComprehension.

```
NSArray *list1 = @[@1, @2, @3];
NSArray *list2 = @[@4, @5, @6];
NSArray *array = [TJLListComprehension listComprehensionWithLists:@[list1, list2] function:^id(id obj, id obj1) {
  return @[obj, obj1];
}];
```

All three examples produce the exact same list, but the first and last example raise you up out of the muck of writing your own loops and mutable containers and lets you focus and what you actually want to accomplish. Also note that The function can return any object, but this example just uses making a new, multi dimensional list out of existing ones as an example.

Caveats
===========
When creating a list comprehension with `+TJLListComprehension listComprehensionWithLists:function:`, you should pass a list of lists, as in the above example. Using an array literal is a convenient way to do this. Anything that conforms to `NSFastEnumeration` can be passed in for the lists parameter.

The function argument is typed as simply `id`, but it is a block that can take a variable number of arguments, which should be the same as the number of lists passed in the lists parameter.

Installation
===========
TJLMemoization uses [cocoapods](http://cocoapods.org), so just put `pod 'TJLListComprehension' 'version'` into your podfile and install like normal. then just `#import <TJLListComprehension/TJLListComprehension.h>` wherever you want to use it.

<h1>License</h1>
If you use TJLListComprehension and you like it, feel free to let me know, <terry@ploverproductions.com>. If you have any issue or want to make improvements, submit a pull request.<br><br>

The MIT License (MIT)
Copyright (c) 2014 Terry Lewis II

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
<br><br>
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
<br><br>
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
