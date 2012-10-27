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
    self=[super init];
    self.rssFeed=feed;
    self.rssWebView=[[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 420)];

    if(self.rssFeed.feedURL!=nil)
    {
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:self.rssFeed.feedURL];
        [self.rssWebView loadRequest:requestObj];
    }
    else
    {
        [self.rssWebView loadHTMLString:self.rssFeed.feedDescription baseURL:self.rssFeed.feedURL];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.rssWebView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)dealloc
{
    [self.rssWebView release];
    [super dealloc];
}

@end
