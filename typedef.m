#include <Foundation/NSObject.h>
#include <stdio.h>

typedef struct _s
{
  int i;
  float f;
  NSObject *a;
  char *str;
  unsigned short shorts[5];
} s;

int main(void){
  const char *encoding = @encode(s);
  printf("Encoding: %s", encoding);
  return 0;
}
