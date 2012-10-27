//
//  RSSDataTable.m
//  RSSReader
//
//  Created by Admin on 13/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "RSSDataTable.h"

@implementation RSSDataTable

- (id)init
{
    self = [super init];
    if(self)
    {
        self.rssItemArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSInteger) tableView: (UITableView*) tableView numberOfRowsInSection: (NSInteger) section
{
    return [self.rssItemArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [[[UITableViewCell alloc] init] autorelease];
    cell.textLabel.text = [[self.rssItemArray objectAtIndex:indexPath.row] rssName];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.delegate showRSS:indexPath.row];
}

-(void)addCellToTableWithName:(NSString *) name andURL:(NSString *) url
{
    self.rssItem = [[RSSItem alloc] initWithName:name url:url];
    [self.rssItemArray addObject:self.rssItem];
    [self.rssItem release];
}

-(void)dealloc
{
    [self.rssItemArray release];
    [super dealloc];
}

@end
