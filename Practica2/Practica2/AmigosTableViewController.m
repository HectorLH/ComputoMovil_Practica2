//
//  AmigosTableViewController.m
//  Practica2
//
//  Created by Ivan on 10/17/14.
//  Copyright (c) 2014 Patito. All rights reserved.
//

#import "AmigosTableViewController.h"
#import "AmigosTableViewCell.h"

@interface AmigosTableViewController ()

@end

@implementation AmigosTableViewController

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
    
    _Names = @[@"Hugo Lopez", @"Ivan Ramire López", @"Juan Aguilera", @"Lupe Esparza", ];
    _Photos = @[@"Hugo.jpg", @"Ivan.jpg", @"Juan.jpg", @"Lupe.jpg", ];
    _Ages = @[@"23", @"34", @"26", @"38", ];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_Names count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"AmigosTableViewCell";
    AmigosTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    int row = [indexPath row];
    cell.NameLabel.text = _Names[row];
    cell.AgeLabel.text = _Ages[row];
    cell.PhotoImage.image = [UIImage imageNamed:_Photos[row]];
    
    return cell;
}


@end
