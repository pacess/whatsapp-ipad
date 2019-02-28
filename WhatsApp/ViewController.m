//
//  ViewController.m
//  WhatsApp
//
//  Created by Pacess HO on 28/2/2019.
//  Copyright © 2019 Fimmick Limited. All rights reserved.
//

#import "ViewController.h"

//==============================================================================
@implementation ViewController

//------------------------------------------------------------------------------
//  Do any additional setup after loading the view, typically from a nib.
- (void)viewDidLoad  {
	[super viewDidLoad];
	NSString *chromeAgent = @"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36";
	NSString *safariAgent = @"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.2 Safari/605.1.15";
	NSString *userAgent = safariAgent;

	NSURL *url = [NSURL URLWithString:@"https://web.whatsapp.com/"];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	
	CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
	WKWebView *webview = [[WKWebView alloc] initWithFrame:rect];
	[webview setCustomUserAgent:userAgent];
	[webview loadRequest:request];
	[webview.scrollView setScrollEnabled:NO];
	[self.view addSubview:webview];
	_webview = webview;
}

//------------------------------------------------------------------------------
//  Dispose of any resources that can be recreated.
- (void)didReceiveMemoryWarning  {
	[super didReceiveMemoryWarning];
}

//------------------------------------------------------------------------------
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator  {
	[_webview setFrame:CGRectMake(0, 0, size.width, size.height)];
}

@end
