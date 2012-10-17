//
//  _RSSTableData.m
//  RSSReader
//
//  Created by Admin on 13/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "_RSSTableData.h"

@implementation _RSSTableData

- (id)init
{
    self = [super init];
    if(self)
    {
        self.dataTableNames = [[NSMutableArray alloc] init];
        self.dataTableURL = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSInteger) tableView: (UITableView*) tableView numberOfRowsInSection: (NSInteger) section
{
    return [self.dataTableNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [[[UITableViewCell alloc] init] autorelease];
    cell.textLabel.text = [self.dataTableNames objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.delegat showRSS:indexPath.row];
}

-(void)addCellToTableWithName:(NSString *) name andURL:(NSString *) URL
{
    [self.dataTableNames addObject:name];
    [self.dataTableURL addObject:URL];
}

-(void)dealloc
{
    [self.dataTableNames release];
    [self.dataTableURL release];
    [self dealloc];
    [super dealloc];
}

@end
