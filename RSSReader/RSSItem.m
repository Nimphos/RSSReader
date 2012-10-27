//
//  RSSitem.m
//  RSSReader
//
//  Created by Admin on 27/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "RSSitem.h"

@implementation RSSItem

-(id)initWithName:(NSString *)name url:(NSString *)url
{
    self=[super init];
    if(self)
    {
        self.rssName = [[NSString alloc] initWithFormat:@"%@", name];
        self.rssUrl = [[NSString alloc] initWithFormat:@"%@", url];
    }
    return self;
}

-(void)dealloc
{
    [self.rssName release];
    _rssName = nil;
    [self.rssUrl release];
    _rssUrl = nil;
    [super dealloc];
}

@end
