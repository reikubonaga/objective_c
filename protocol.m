#import <Foundation/Foundation.h>

@protocol MyProtocol1
@required
- (void) foo;
@optional
- (void) bar;
@end

@interface MyClass1 : NSObject <MyProtocol1>
@end

@interface Runner : NSObject
@property(nonatomic, assign) id <MyProtocol1, NSObject> delegate;
- (void) run;
@end

@implementation MyClass1
- (void)foo { printf("%s\n", __PRETTY_FUNCTION__); }
@end

@implementation Runner
@synthesize delegate = _delegate;
- (void) run{
  [_delegate foo];
  if ([_delegate respondsToSelector:@selector(bar)])
    [_delegate bar];
}
@end

int main() {
  Runner *runner = [[Runner alloc] init];
  [runner run];
  runner.delegate = [[MyClass1 alloc] init];
  [runner run];
  [runner.delegate release];

  return 0;
}
