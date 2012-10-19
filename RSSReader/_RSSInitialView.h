//
//  _RSSInitialView.h
//  RSSReader
//
//  Created by Admin on 12/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_RSSTableData.h"
#import "_RSSListDataView.h"

@interface _RSSInitialView : UITableViewController<ShowRSSProtocol>

@property(nonatomic, retain)UITableView *mainTable;
@property(nonatomic, retain)_RSSTableData *tableData;

-(void)addCellWithName:(NSString *)name andURL:(NSString *)url;
-(void)addFeed;

@end
