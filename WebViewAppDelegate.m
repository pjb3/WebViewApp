#import "WebViewAppDelegate.h"

@implementation WebViewAppDelegate

@synthesize webView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  NSString* filePath = [[NSBundle mainBundle] pathForResource: @"index" ofType: @"html"];
  NSLog(@"filePath is %@", filePath);
  NSURL *baseUrl = [NSURL fileURLWithPath:[filePath stringByDeletingLastPathComponent]]; 
  NSLog(@"baseUrl is %@", baseUrl);
  [[self.webView mainFrame] loadHTMLString: [NSString stringWithContentsOfFile: filePath] baseURL: baseUrl];
}

@end
