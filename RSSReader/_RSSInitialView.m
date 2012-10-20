//
//  _RSSInitialView.m
//  RSSReader
//
//  Created by Admin on 12/10/2012.
//  Copyright (c) 2012 Admin. All rights reserved.
//

#import "_RSSInitialView.h"

@interface _RSSInitialView ()

@end

@implementation _RSSInitialView


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"RSSReader";
        // Custom initialization
        //self.mainTable = [[UITableView alloc] init];
        //self.tableData = [[_RSSTableData alloc] init];
        //self.tableData.delegat = self;
        //self.tableView.dataSource = self.tableData;// передача управления данными
        
        
        
       // CGRect mainTableFrame = CGRectMake(0, 0, 320, 320);
        self.mainTable= [[UITableView alloc] init];
        self.tableData = [[_RSSTableData alloc] init];
        self.tableData.delegat = self;
        
        [self.mainTable setDataSource:self.tableData];
        [self.mainTable setDelegate:self.tableData];
        
        //self.mainTable.frame = mainTableFrame;
        self.mainTable.frame = CGRectMake(0, 0, 320, 420);
        
        UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Add feed" style:UIBarButtonItemStylePlain target:self action:@selector(AddFeed)];
        self.navigationItem.rightBarButtonItem = barButtonItem;
        [barButtonItem release];
        
        [self addCellWithName:@"Lenta.ru" andURL:@"http://lenta.ru/l/r/EX/import.rss"];
<<<<<<< HEAD
        [self addCellWithName:@"Вести.ru" andURL:@"http://www.vesti.ru/vesti.rss"];
=======
>>>>>>> ab7a69759e961dd5dfff946098afb4e025182f88
    }
    return self;
}

-(void)addCellWithName:(NSString *)name andURL:(NSString *)url
{
    [self.tableData addCellToTableWithName:name andURL:url];
    [self.mainTable reloadData];
}

-(void)addFeed
{ 
}

-(void)showRSS:(NSInteger)index
{
//    _RSSListDataView * listData= [[_RSSListDataView alloc] initWithURL:(self.tableData.dataTableURL)[index]];
//    listData.title=(self.tableData.dataTableNames)[index];
    _RSSListDataView * listData= [[_RSSListDataView alloc] initWithURL:[self.tableData.dataTableURL objectAtIndex:index]];
    listData.title=[self.tableData.dataTableNames objectAtIndex:index];
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
    [self.tableData release];
    [super dealloc];
}

@end
