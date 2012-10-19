//
//  _RSSListDataView.h
//  RSSReader
//
//  Created by Admin on 15/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_RSSParser.h"
#import "_RSSFeed.h"
#import "_RSSTableFeeds.h"
#import "_RSSWebView.h"


@interface _RSSListDataView : UITableViewController<ShowFeedProtocol>

@property(nonatomic, retain)UITableView *listTable;
@property(nonatomic, retain)NSXMLParser *parcerXML;
@property(nonatomic, retain)_RSSParser *parserRSS;
@property(nonatomic, retain)NSURL *url;
@property(nonatomic, retain)_RSSTableFeeds *tableFeeds;

-(id)initWithURL:(NSString *)url;

@end
