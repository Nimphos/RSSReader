//
//  RSSViewController.h
//  RSSReader
//
//  Created by Admin on 12/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RSSDataTable.h"
#import "FeedViewController.h"

@interface RSSViewController : UITableViewController<ShowRSSProtocol>

@property(nonatomic, retain)UITableView *mainTable;
@property(nonatomic, retain)RSSDataTable *tableData;

-(void)addCellWithName:(NSString *)name andURL:(NSString *)url;
-(void)addFeed;

@end
