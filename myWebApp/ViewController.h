//
//  ViewController.h
//  myWebApp
//
//  Created by CtecTeacher on 5/29/14.
//  Copyright (c) 2014 ABC Adult School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SVProgressHUD.h"
#import "AHKActionSheet.h"


@interface ViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)openMenu:(id)sender;

@end
