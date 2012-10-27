//
//  FeedDataTable.m
//  RSSReader
//
//  Created by Admin on 16/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "FeedDataTable.h"

@implementation FeedDataTable

-(id)initWithFeedTable:(NSArray *)feedArray
{
    self = [super init];
    if(self)
    {
        self.feedTable = feedArray;
    }
    return self;
}

- (UITableViewCell*) tableView: (UITableView*) tableView cellForRowAtIndexPath: (NSIndexPath*) index_path
{
    UITableViewCell *cell = [[[UITableViewCell alloc] init] autorelease];
    FeedItem *rssFeed =[self.feedTable objectAtIndex:index_path.row];
    cell.textLabel.text = rssFeed.feedTitle;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"SHOW FEED delegate!!!!!");
    [self.delegate showFeed:indexPath.row];
}

- (NSInteger) tableView: (UITableView*) tableView numberOfRowsInSection: (NSInteger) section
{
    return [self.feedTable count];
}

-(void)dealloc
{
    [super dealloc];
}

@end
