//
//  FeedItem.m
//  RSSReader
//
//  Created by Admin on 15/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "FeedItem.h"

@implementation FeedItem

-(id)initWithTitle:(NSString*)title Description:(NSString *)description URL:(NSString *)URL
{
    self=[super init];
    self.feedTitle=[[NSString alloc] initWithFormat:@"%@",title];
    self.feedDescription=[[NSString alloc] initWithFormat:@"%@",description];
    self.feedURL=[[NSURL alloc] initWithString:URL];
    
    return self;
}

-(void)dealloc
{
    [self.feedTitle release];
    [self.feedDescription release];
    [self.feedURL release];
    [super dealloc];
}

@end
