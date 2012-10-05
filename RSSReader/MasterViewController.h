//
//  MasterViewController.h
//  RSSReader
//
//  Created by Mac on 06.10.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController{
    NSMutableData *rssData;
    NSMutableArray *news;
    NSString * currentElement;
    NSMutableString *currentTitle;
    NSMutableString *pubDate;
}

@property (nonatomic, retain) NSMutableData *rssData;
@property (nonatomic, retain) NSMutableArray *news;
@property (nonatomic, retain) NSString * currentElement;
@property (nonatomic, retain) NSMutableString *currentTitle;
@property (nonatomic, retain) NSMutableString *pubDate;

@end
