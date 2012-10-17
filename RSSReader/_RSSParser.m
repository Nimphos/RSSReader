//
//  _RSSParser.m
//  RSSReader
//
//  Created by Admin on 15/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "_RSSParser.h"

@implementation _RSSParser

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
            self.content=nil;
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
                self.description=[[[NSString alloc] initWithFormat:@"%@",character] autorelease];
            
            self.description=[self.description stringByAppendingString:character];
        }
        if([self.auxiliaryStr isEqualToString:@"link"])
        {
            if(self.content==nil)
                self.content=[[[NSString alloc] initWithFormat:@"%@",character] autorelease];
            
            self.content=[self.content stringByAppendingString:character];
        }
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if([elementName isEqualToString:@"item"])
    {
        _RSSFeed * feed=[[[_RSSFeed alloc] initWithTitle:self.title Description:self.description URL:self.content] autorelease];
        [self.feedArray addObject:feed];
    }
}

-(void)dealloc
{
    [self.feedArray release];
    [self.auxiliaryStr release];
    [self.title release];
    [self.description release];
    [self.content release];
    [super dealloc];
}

@end
