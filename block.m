#include <Foundation/NSObject.h>
#include <Foundation/NSException.h>
#include <stdio.h>

int(^getCounter(void)) (void)
{
  __block int counter;
  int(^block) (void) = ^(void) { return counter+=1; };
  return Block_copy(block);
}

int main(void)
{
  int(^block)(void) = getCounter();
  block(); block();
  NSCAssert(block() == 3, @"block counted incorrectly.");
  int(^block2)(void) = getCounter();
  NSCAssert(block2() == 1, @"block didn't start from 0.");
  return 0;
}
