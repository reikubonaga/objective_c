#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  NSArray *args = [[NSProcessInfo processInfo] arguments];
  NSCountedSet *cset = [[NSCountedSet alloc] initWithArray:args];
  NSArray *sorted_args = [[cset allObjects] sortedArrayUsingSelector:@selector(compare:)];
  NSEnumerator *enm = [sorted_args objectEnumerator];
  id word;
  while (word = [enm nextObject]){
    printf("%s\n", [word UTF8String]);
  }
  [cset release];
  [pool release];
  return 0;
}
