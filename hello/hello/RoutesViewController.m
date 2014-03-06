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
                        @[ @"010", @"25" ],
                        @[ @"024", @"25" ],
                        @[ @"034", @"25" ],
                        @[ @"046", @"25" ],
                        @[ @"058", @"25" ],
                        @[ @"064", @"25" ],
                        @[ @"078", @"25" ],
                        @[ @"089", @"25" ],
                        @[ @"096", @"25" ],
                        @[ @"100", @"25" ],
                        
                        @[ @"110", @"30" ],
                        @[ @"124", @"30" ],
                        @[ @"134", @"30" ],
                        @[ @"145", @"30" ],
                        @[ @"158", @"30" ],
                        @[ @"164", @"30" ],
                        @[ @"178", @"30" ],
                        @[ @"189", @"30" ],
                        @[ @"196", @"30" ],
                        @[ @"200", @"30" ],
                        
                        @[ @"210", @"50" ],
                        @[ @"224", @"50" ],
                        @[ @"234", @"50" ],
                        @[ @"246", @"50" ],
                        @[ @"258", @"50" ],
                        @[ @"264", @"50" ],
                        @[ @"278", @"50" ],
                        @[ @"289", @"50" ],
                        @[ @"296", @"50" ],
                        @[ @"300", @"50" ]];

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
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"BasicCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"№%@",[[self.routesData objectAtIndex:indexPath.row] objectAtIndex:0]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ руб.",[[self.routesData objectAtIndex:indexPath.row] objectAtIndex:1]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"The selected cell number of %ld",(long)indexPath.row+1);
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
