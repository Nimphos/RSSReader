//
//  RSSitem.h
//  RSSReader
//
//  Created by Admin on 27/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSSItem : NSObject

@property(nonatomic, retain) NSString *rssName;
@property(nonatomic, retain) NSString *rssUrl;

-(id)initWithName:(NSString *)name url:(NSString *)url;

@end
