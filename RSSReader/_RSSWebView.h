//
//  _RSSWebView.h
//  RSSReader
//
//  Created by Admin on 17/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_RSSFeed.h"

@interface _RSSWebView : UIViewController<UITableViewDataSource , UITableViewDelegate>

@property(nonatomic, retain)_RSSFeed *rssFeed;
@property(nonatomic, retain)UIWebView *rssWebView;

-(id)initWithFeed:(_RSSFeed *)feed;

@end
