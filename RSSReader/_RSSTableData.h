//
//  _RSSTableData.h
//  RSSReader
//
//  Created by Admin on 13/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "_RSSListDataView.h"

@protocol ShowRSSProtocol
-(void)showRSS:(NSInteger)index;
@end

@interface _RSSTableData : NSObject<UITableViewDataSource , UITableViewDelegate>

@property(nonatomic, assign) id<ShowRSSProtocol> delegat;
@property(nonatomic, retain)NSMutableArray *dataTableNames;
@property(nonatomic, retain)NSMutableArray *dataTableURL;

-(void)addCellToTableWithName:(NSString *) name andURL:(NSString *) URL;

@end
