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
    self.rssName = name;
    self.rssUrl = url;
    
    return self;
}

@end
