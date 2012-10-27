//
//  RSSViewController.m
//  RSSReader
//
//  Created by Admin on 12/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "RSSViewController.h"
#import "RSSAlertView.h"

@implementation RSSViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"RSSReader";

        self.mainTable= [[UITableView alloc] init];
        self.tableData = [[RSSDataTable alloc] init];
        self.tableData.delegate = self;
        
        [self.mainTable setDataSource:self.tableData];
        [self.mainTable setDelegate:self.tableData];
        
        self.mainTable.frame = CGRectMake(0, 0, 320, 420);
        
        UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Add feed" style:UIBarButtonItemStylePlain target:self action:@selector(addFeed)];
        self.navigationItem.rightBarButtonItem = barButtonItem;
        [barButtonItem release];
        
        [self addCellWithName:@"Lenta.ru" andURL:@"http://lenta.ru/l/r/EX/import.rss"];
        [self addCellWithName:@"Вести.ru" andURL:@"http://www.vesti.ru/vesti.rss"];
    }
    return self;
}

-(void)addCellWithName:(NSString *)name andURL:(NSString *)url
{
    [self.tableData addCellToTableWithName:name URL:url];
    [self.mainTable reloadData];
}

-(void)addFeed
{
    NSLog(@"ADD FEED");
    RSSAlertView *message = [[[RSSAlertView alloc] initWithTitle:@"Add feed"
                                                             message:nil
                                                         addRowBlock:^(BOOL cancelled, NSInteger buttonIndex, NSString *name, NSString *url) {
                                                              [self addCellWithName:name andURL:url];
                                                          }
                                                   cancelButtonTitle:@"OK"
                                                   otherButtonTitles:nil] autorelease];
    [message setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput];
    [[message textFieldAtIndex:0] setText:@"Подробности: культура"];
    [[message textFieldAtIndex:1] setText:@"http://podrobnosti.ua/rss/culture.rss/"];
    [[message textFieldAtIndex:1] setSecureTextEntry:NO];
    [message show];
}

-(void)showRSS:(NSInteger)index
{
    FeedViewController *listData= [[FeedViewController alloc] initWithURL:[[self.tableData.rssItemArray objectAtIndex:index] rssUrl]];
    listData.title=[[self.tableData.rssItemArray objectAtIndex:index] rssName];
    [self.navigationController pushViewController:listData animated:YES];
    [listData release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.mainTable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];}

- (void)dealloc
{
    [self.mainTable release];
    _mainTable = nil;
    [self.tableData release];
    _tableData = nil;
    [super dealloc];
}

@end
