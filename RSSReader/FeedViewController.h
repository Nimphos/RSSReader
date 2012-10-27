//
//  FeedViewController.h
//  RSSReader
//
//  Created by Admin on 15/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RSSParser.h"
#import "FeedItem.h"
#import "FeedDataTable.h"
#import "WebViewController.h"


@interface FeedViewController : UITableViewController<ShowFeedProtocol>

@property(nonatomic, retain)UITableView *listTable;
@property(nonatomic, retain)NSXMLParser *parcerXML;
@property(nonatomic, retain)RSSParser *parserRSS;
@property(nonatomic, retain)NSURL *url;
@property(nonatomic, retain)FeedDataTable *tableFeeds;

-(id)initWithURL:(NSString *)url;

@end
