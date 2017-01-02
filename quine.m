#import <Foundation/Foundation.h>

int main(void) {
  @autoreleasepool {
    NSArray *a = [NSArray arrayWithObjects:
      @"#import <Foundation/Foundation.h>",
      @"",
      @"int main(void) {",
      @"  @autoreleasepool {",
      @"    NSArray *a = [NSArray arrayWithObjects:",
      @"      ",
      @"      nil",
      @"    ];",
      @"    NSFileHandle *stdout = [NSFileHandle fileHandleWithStandardOutput];",
      @"    [a enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {",
      @"      if ([obj isEqualToString: [a objectAtIndex: 5]]) {",
      @"        [a enumerateObjectsUsingBlock:^(NSString *obj2, NSUInteger idx, BOOL *stop) {",
      @"          [stdout writeData: [[[NSString alloc] initWithFormat: [a objectAtIndex: [a count] - 1],",
      @"            obj, 34, obj2, 34, 10] dataUsingEncoding: NSUTF8StringEncoding]];",
      @"        }];",
      @"      } else if ([obj isEqualToString: [a objectAtIndex: [a count] - 2]]) {",
      @"        *stop = YES;",
      @"      } else {",
      @"        [stdout writeData: [[[NSString alloc] initWithFormat: [a objectAtIndex: [a count] - 2],",
      @"          obj, 10] dataUsingEncoding: NSUTF8StringEncoding]];",
      @"      }",
      @"    }];",
      @"  }",
      @"  return 0;",
      @"}",
      @"%@%c",
      @"%@@%c%@%c,%c",
      nil
    ];
    NSFileHandle *stdout = [NSFileHandle fileHandleWithStandardOutput];
    [a enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
      if ([obj isEqualToString: [a objectAtIndex: 5]]) {
        [a enumerateObjectsUsingBlock:^(NSString *obj2, NSUInteger idx, BOOL *stop) {
          [stdout writeData: [[[NSString alloc] initWithFormat: [a objectAtIndex: [a count] - 1],
            obj, 34, obj2, 34, 10] dataUsingEncoding: NSUTF8StringEncoding]];
        }];
      } else if ([obj isEqualToString: [a objectAtIndex: [a count] - 2]]) {
        *stop = YES;
      } else {
        [stdout writeData: [[[NSString alloc] initWithFormat: [a objectAtIndex: [a count] - 2],
          obj, 10] dataUsingEncoding: NSUTF8StringEncoding]];
      }
    }];
  }
  return 0;
}
