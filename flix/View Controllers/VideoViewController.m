//
//  VideoViewController.m
//  flix
//
//  Created by eazheng on 6/28/19.
//  Copyright © 2019 eazheng. All rights reserved.
//

#import "VideoViewController.h"
#import <WebKit/WebKit.h>

@interface VideoViewController ()
@property (weak, nonatomic) IBOutlet WKWebView *trailerView;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // As a property or local variable
    NSString *urlString = @"https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed";
    
    // Convert the url String to a NSURL object.
    NSURL *url = [NSURL URLWithString:urlString];
    
    // Place the URL in a URL Request.
    NSURLRequest *request = [NSURLRequest requestWithURL:url
                                             cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                         timeoutInterval:10.0];
    // Load Request into WebView.
    [self.trailerView loadRequest:request];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
