//
//  SecondTableViewController.m
//  Practica2
//
//  Created by Ivan on 10/16/14.
//  Copyright (c) 2014 Patito. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController (){
    NSArray *aguascalientes;
    NSArray *jalisco;
    NSArray *nayarit;
    NSArray *sinaloa;
    NSArray *veracruz;
    
    NSMutableArray *imagesEscudos;
}

@end

@implementation SecondTableViewController

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
    aguascalientes = [NSArray arrayWithObjects:@"Asientos", @"Calvillo", @"Cosío", @"Jesús María", nil];
    jalisco = [NSArray arrayWithObjects:@"Guadalajara", @"Tonaya", @"San Juan", @"Tepatitlán", nil];
    nayarit = [NSArray arrayWithObjects:@"Acaponeta", @"Compostela", @"Jala", @"Xalisco", nil];
    sinaloa = [NSArray arrayWithObjects:@"Ahome", @"Elota", @"La Cruz", @"Navolato", nil];
    veracruz = [NSArray arrayWithObjects:@"Acula", @"Atoyac", @"Chalma", @"Xalapa", nil];
    
    imagesEscudos = [[NSMutableArray alloc ] initWithObjects:
                     @"Aguascalientes.png",
                     @"Jalisco.png",
                     @"Nayarit.png",
                     @"Sinaloa.png",
                     @"Veracruz.png",
                     nil];

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
    if([_estadoName isEqualToString:@"Aguascalientes"]) {
        return [aguascalientes count];
    }
    else if([_estadoName isEqualToString:@"Jalisco"]) {
        return [jalisco count];
    }
    else if([_estadoName isEqualToString:@"Nayarit"]) {
        return [nayarit count];
    }
    else if([_estadoName isEqualToString:@"Sinaloa"]) {
        return [sinaloa count];
    }
    else if([_estadoName isEqualToString:@"Veracruz"]) {
        return [veracruz count];
    }
    return 0;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Estado2Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    if([_estadoName isEqualToString:@"Aguascalientes"]){
        cell.textLabel.text = [aguascalientes objectAtIndex:indexPath.row];
        self.imgEscudoEstado.image = [UIImage imageNamed:[imagesEscudos objectAtIndex:0]];
    }
    else if([_estadoName isEqualToString:@"Jalisco"]){
        cell.textLabel.text = [jalisco objectAtIndex:indexPath.row];
        self.imgEscudoEstado.image = [UIImage imageNamed:[imagesEscudos objectAtIndex:1]];
    }
    else if([_estadoName isEqualToString:@"Nayarit"]){
        cell.textLabel.text = [nayarit objectAtIndex:indexPath.row];
        self.imgEscudoEstado.image = [UIImage imageNamed:[imagesEscudos objectAtIndex:2]];
    }
    else if([_estadoName isEqualToString:@"Sinaloa"]){
        cell.textLabel.text = [sinaloa objectAtIndex:indexPath.row];
        self.imgEscudoEstado.image = [UIImage imageNamed:[imagesEscudos objectAtIndex:3]];
    }
    else if([_estadoName isEqualToString:@"Veracruz"]){
        cell.textLabel.text = [veracruz objectAtIndex:indexPath.row];
        self.imgEscudoEstado.image = [UIImage imageNamed:[imagesEscudos objectAtIndex:4]];
    }
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
