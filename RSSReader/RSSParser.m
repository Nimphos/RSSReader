//
//  RSSParser.m
//  RSSReader
//
//  Created by Admin on 15/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "RSSParser.h"

@implementation RSSParser

-(id)init
{
    self = [super init];
    if(self)
    {
        self.feedArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    self.auxiliaryStr=elementName;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)character {
    if(![character isEqualToString:@""])
    {
        
        if([self.auxiliaryStr isEqualToString:@"item"])
        {
            self.title=nil;
            self.description=nil;
            self.url=nil;
        }
        if([self.auxiliaryStr isEqualToString:@"title"])
        {
            if(self.title==nil)
                self.title=[[[NSString alloc] initWithFormat:@"%@",character] autorelease];
            if([character length]==0)
                self.title=[self.title stringByAppendingString:character];
        }
        if([self.auxiliaryStr isEqualToString:@"description"])
        {
            if(self.description==nil)
                self.description=[[NSString alloc] initWithFormat:@"%@",character];
            
            self.description=[self.description stringByAppendingString:character];
            NSLog(@"Appending description RSSParser");
        }
        if([self.auxiliaryStr isEqualToString:@"link"])
        {
            if(self.url==nil)
                self.url=[[[NSString alloc] initWithFormat:@"%@",character] autorelease];
            
            self.url=[self.url stringByAppendingString:character];
        }
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if([elementName isEqualToString:@"item"])
    {
        FeedItem * feed=[[[FeedItem alloc] initWithTitle:self.title Description:self.description URL:self.url] autorelease];
        [self.feedArray addObject:feed];
    }
}

-(void)dealloc
{
    [self.feedArray release];
    [self.auxiliaryStr release];
    [self.title release];
    [self.description release];
    [self.url release];
    _feedArray = nil;
    _auxiliaryStr = nil;
    _title = nil;
    _description = nil;
    _url = nil;
    [super dealloc];
}

@end
