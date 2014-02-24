//
//  MainViewController.m
//  hello
//
//  Created by Слава on 23.02.14.
//  Copyright (c) 2014 Palaum. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;

@end

@implementation MainViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [_resetButton setHidden: true];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

int count = 0;

- (IBAction)plusWelcomeLabel:(id)sender {
    count += 1;
    self.welcomeLabel.text = [NSString stringWithFormat:@"%d", count];
    
    self.resetButton.hidden = NO;
}

- (IBAction)minusWelcomeLabel:(id)sender {
    count -= 1;
    self.welcomeLabel.text = [NSString stringWithFormat:@"%d", count];
    
    self.resetButton.hidden = NO;
}

- (IBAction)resetWelcomeLabel:(id)sender {
    count = 0;
    self.welcomeLabel.text = [NSString stringWithFormat:@"Clicker"];
    
    self.resetButton.hidden = YES;
}

@end
