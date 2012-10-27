//
//  WebViewController.m
//  RSSReader
//
//  Created by Admin on 17/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

-(id)initWithFeed:(FeedItem *)feed
{
    NSLog(@"InitWithFeed");
    self=[super init];
    self.feedItem=feed;
    self.feedWebView=[[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 420)];

    if(self.feedItem.feedURL!=nil)
    {
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:self.feedItem.feedURL];
        [self.feedWebView loadRequest:requestObj];
    }
    else
    {
        [self.feedWebView loadHTMLString:self.feedItem.feedDescription baseURL:self.feedItem.feedURL];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.feedWebView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)dealloc
{
    [self.feedWebView release];
    _feedItem = nil;
    _feedWebView = nil;
    [super dealloc];
}

@end
