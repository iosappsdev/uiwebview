//
//  ViewController.m
//  myWebApp
//
//  Created by CtecTeacher on 5/29/14.
//  Copyright (c) 2014 ABC Adult School. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int progressCounter;
}

@end

@implementation ViewController
@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

  //  NSURL *url = [NSURL URLWithString:@"http://www.cnn.com"];
    
   // NSString *page = [[NSBundle mainBundle]pathForResource:@"sample" ofType:@"html"];
    
   // NSURL *url = [NSURL fileURLWithPath:page];
    
    //NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    // [webView loadRequest:request];
    
   [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.cnn.com"]]];

}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    progressCounter++;
    [self progressCheck];
    [SVProgressHUD show];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    progressCounter--;
    [self progressCheck];
}

-(void)progressCheck{

    if (progressCounter==0){

    [SVProgressHUD dismiss];
    
    }else{
   // [SVProgressHUD show];
    
    }


}

- (IBAction)openMenu:(id)sender {
    
    
    AHKActionSheet *actionSheet = [[AHKActionSheet alloc] initWithTitle:NSLocalizedString(@"Options", nil)];
    
    [actionSheet addButtonWithTitle:NSLocalizedString(@"Info", nil)
                              image:nil
                               type:AHKActionSheetButtonTypeDefault
                            handler:^(AHKActionSheet *as) {
                                NSLog(@"Info tapped");
                            }];
    [actionSheet addButtonWithTitle:NSLocalizedString(@"Test", nil)
                              image:nil
                               type:AHKActionSheetButtonTypeDefault
                            handler:^(AHKActionSheet *as) {
                                NSLog(@"Test tapped");
                            }];

    [actionSheet show];
}
@end
