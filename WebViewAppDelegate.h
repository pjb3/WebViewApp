#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface WebViewAppDelegate : NSObject  {

  IBOutlet WebView *webView;
  
}

@property (nonatomic, retain) WebView *webView;

@end
