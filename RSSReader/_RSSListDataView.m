//
//  _RSSListDataView.m
//  RSSReader
//
//  Created by Admin on 15/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "_RSSListDataView.h"

@interface _RSSListDataView ()

@end

@implementation _RSSListDataView

-(id)initWithURL:(NSString *)url
{
    self = [super init];
    if(self)
    {
        self.url = [[NSURL alloc] initWithString:url];
        self.parcerXML = [[NSXMLParser alloc] initWithContentsOfURL:self.url];
        [self.url release];
        self.parserRSS = [[_RSSParser alloc] init];
        [self.parcerXML setDelegate:self.parserRSS];
        [self.parcerXML parse];
        [self.parcerXML release];
        
        self.tableFeeds =[[_RSSTableFeeds alloc] initWithFeedTable:self.parserRSS.feedArray];
        self.tableFeeds.delegate = self;
        
        self.listTable = [[UITableView alloc] init];
        [self.listTable setDataSource:self.tableFeeds];
        [self.listTable setDelegate:self.tableFeeds];
        self.listTable.frame = CGRectMake(0, 0, 320, 420);
        
        
    /*    self.mainTable= [[UITableView alloc] init];
        self.tableData = [[_RSSTableData alloc] init];
        self.tableData.delegat = self;
        
        [self.mainTable setDataSource:self.tableData];
        [self.mainTable setDelegate:self.tableData];
        
        self.mainTable.frame = mainTableFrame;*/
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.listTable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showFeed:(NSInteger)index
{
    NSLog(@"SHOW FEED !!!!!");
    _RSSWebView *webView=[[_RSSWebView alloc] initWithFeed:[self.parserRSS.feedArray objectAtIndex:index] ];
    webView.title=[[self.parserRSS.feedArray objectAtIndex:index] title];
    [self.navigationController pushViewController:webView animated:YES];
    [webView release];
}

- (void)dealloc
{
    [self.listTable release];
    [self.parserRSS release];
    [self.parcerXML release];
    [super dealloc];
}

@end
