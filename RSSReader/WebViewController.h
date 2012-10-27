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

@property(nonatomic, retain)FeedItem *feedItem;
@property(nonatomic, retain)UIWebView *feedWebView;

-(id)initWithFeed:(FeedItem *)feed;

@end
