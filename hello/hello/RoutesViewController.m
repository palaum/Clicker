//
//  RoutesViewController.m
//  hello
//
//  Created by Слава on 06.03.14.
//  Copyright (c) 2014 Palaum. All rights reserved.
//

#import "RoutesViewController.h"
#import "AFNetworking.h"

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
    
    //Activity Indicator for view with Navigation Controller
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    UIBarButtonItem * barButton = [[UIBarButtonItem alloc] initWithCustomView:activityIndicator];
    [self navigationItem].leftBarButtonItem = barButton;
    [activityIndicator startAnimating];
    
    // Parse
    NSString *routesURL = [NSString stringWithFormat:@"http://marshrutki.com.ua/mu/routes.php"];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:routesURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        self.routesData = (NSArray *)responseObject;
        [self.tableView reloadData];
        [activityIndicator stopAnimating];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];

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
    
    cell.textLabel.text = [route objectForKey:@"route_title"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@₴", [route objectForKey:@"route_price"]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *route = [self.routesData objectAtIndex:indexPath.row];
    NSLog(@"The selected route: %@", [route objectForKey:@"route_title"]);
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
