#include <Foundation/NSObject.h>
#include <stdio.h>

@interface Integer : NSObject
@property (nonatomic, assign) int integer;
@end
@implementation Integer
@synthesize integer;
@end

int main() {
  Integer *obj = [Integer new];

  //obj.integer = 12;
  //int i = obj.integer;
  //obj.integer += 42;

  obj.integer = 12;
  [obj setInteger: [obj integer] + 42];

  printf("%d", obj.integer);
}
