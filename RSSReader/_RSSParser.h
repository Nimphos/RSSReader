//
//  _RSSParser.h
//  RSSReader
//
//  Created by Admin on 15/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "_RSSFeed.h"

@interface _RSSParser : NSObject<NSXMLParserDelegate>

@property(unsafe_unretained) NSMutableArray* feedArray;
@property(nonatomic, retain) NSString * auxiliaryStr;
@property(nonatomic, retain) NSString * title;
@property(nonatomic, retain) NSString * description;
@property(nonatomic, retain) NSString * content;

@end
