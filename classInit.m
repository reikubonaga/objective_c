#include <Foundation/NSObject.h>

@interface Init : NSObject
@end

@implementation Init
+ (void) load
{
  NSLog(@"+ load called");
}
+ (void) initialize
{
  NSLog(@"+ load initialize");
}
- (id) init
{
  NSLog(@"+ load init");
  return self;
}
@end

int main(){
  [NSObject new];
  NSLog(@"+ load main()");
  id init = [[Init alloc] init];
  init = [[Init alloc] init];
  return 0;
}
