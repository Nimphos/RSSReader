//
//  RSSDataTable.h
//  RSSReader
//
//  Created by Admin on 13/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FeedViewController.h"
#import "RSSItem.h"

@protocol ShowRSSProtocol
-(void)showRSS:(NSInteger)index;
@end

@interface RSSDataTable : NSObject<UITableViewDataSource , UITableViewDelegate>

@property(nonatomic, assign) id<ShowRSSProtocol> delegate;
@property(nonatomic, retain) RSSItem *rssItem;
@property(nonatomic, retain) NSMutableArray *rssItemArray;

-(void)addCellToTableWithName:(NSString *) name andURL:(NSString *) url;

@end
