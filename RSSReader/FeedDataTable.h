//
//  FeedDataTable.h
//  RSSReader
//
//  Created by Admin on 16/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FeedItem.h"

@protocol ShowFeedProtocol
-(void)showFeed:(NSInteger)index;
@end

@interface FeedDataTable : NSObject<UITableViewDataSource , UITableViewDelegate>

@property(nonatomic, assign)id<ShowFeedProtocol> delegate;
@property(nonatomic, retain)NSArray *feedTable;
-(id)initWithFeedTable:(NSArray *)feedArray;

@end
