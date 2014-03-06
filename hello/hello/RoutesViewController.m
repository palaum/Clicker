//
//  RoutesViewController.m
//  hello
//
//  Created by Слава on 06.03.14.
//  Copyright (c) 2014 Palaum. All rights reserved.
//

#import "RoutesViewController.h"

@interface RoutesViewController ()
@property NSArray* routesData;

@end

@implementation RoutesViewController

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
    
    self.routesData = @[
                        @{ @"title": @"010", @"price": @"25" },
                        @{ @"title": @"024", @"price": @"25" },
                        @{ @"title": @"034", @"price": @"25" },
                        @{ @"title": @"046", @"price": @"25" },
                        @{ @"title": @"058", @"price": @"25" },
                        @{ @"title": @"064", @"price": @"25" },
                        @{ @"title": @"078", @"price": @"25" },
                        @{ @"title": @"089", @"price": @"25" },
                        @{ @"title": @"096", @"price": @"25" },
                        @{ @"title": @"100", @"price": @"25" },
                        
                        @{ @"title": @"110", @"price": @"30" },
                        @{ @"title": @"124", @"price": @"30" },
                        @{ @"title": @"134", @"price": @"30" },
                        @{ @"title": @"145", @"price": @"30" },
                        @{ @"title": @"158", @"price": @"30" },
                        @{ @"title": @"164", @"price": @"30" },
                        @{ @"title": @"178", @"price": @"30" },
                        @{ @"title": @"189", @"price": @"30" },
                        @{ @"title": @"196", @"price": @"30" },
                        @{ @"title": @"200", @"price": @"30" },
                        
                        @{ @"title": @"210", @"price": @"50" },
                        @{ @"title": @"224", @"price": @"50" },
                        @{ @"title": @"234", @"price": @"50" },
                        @{ @"title": @"246", @"price": @"50" },
                        @{ @"title": @"258", @"price": @"50" },
                        @{ @"title": @"264", @"price": @"50" },
                        @{ @"title": @"278", @"price": @"50" },
                        @{ @"title": @"289", @"price": @"50" },
                        @{ @"title": @"296", @"price": @"50" },
                        @{ @"title": @"300", @"price": @"50" }
                        ];

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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.routesData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"BasicCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSDictionary *route = [self.routesData objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"№%@", [route objectForKey:@"title"]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ руб.", [route objectForKey:@"price"]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *route = [self.routesData objectAtIndex:indexPath.row];
    NSLog(@"The selected route: %@", [route objectForKey:@"title"]);
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
