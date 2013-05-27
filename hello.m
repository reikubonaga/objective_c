#include <Foundation/NSObject.h>
#include <stdio.h>

@interface HelloWorld : NSObject
- (void) hello;
@end

@implementation HelloWorld

- (void) hello{
  printf("Hello World.\n");
}

@end

int main(int argc, char **argv){
  id obj = [HelloWorld alloc];
  [obj hello];

  return 0;
}
