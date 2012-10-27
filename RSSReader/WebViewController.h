//
//  WebViewController.h
//  RSSReader
//
//  Created by Admin on 17/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedItem.h"

@interface WebViewController : UIViewController<UITableViewDataSource , UITableViewDelegate>

@property(nonatomic, retain)FeedItem *rssFeed;
@property(nonatomic, retain)UIWebView *rssWebView;

-(id)initWithFeed:(FeedItem *)feed;

@end
