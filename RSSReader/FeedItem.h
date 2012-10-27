//
//  FeedItem.h
//  RSSReader
//
//  Created by Admin on 15/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FeedItem : NSObject

@property(nonatomic, retain) NSString *feedTitle;
@property(nonatomic, retain) NSString *feedDescription;
@property(nonatomic, retain) NSURL *feedURL;
-(id)initWithTitle:(NSString*)title Description:(NSString *)description URL:(NSString *)URL;

@end
