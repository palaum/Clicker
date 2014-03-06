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
@property (nonatomic) int count;

@end

@implementation MainViewController

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

- (IBAction)plusWelcomeLabel:(id)sender {
    ++self.count;
}

- (IBAction)minusWelcomeLabel:(id)sender {
    --self.count;
}

- (IBAction)resetWelcomeLabel:(id)sender {
    self.count = 0;
}

- (void)setCount:(int)count {
    _count = count;
    if (count == 0) {
        self.resetButton.hidden = YES;
        self.welcomeLabel.text = [NSString stringWithFormat:@"Clicker"];
    } else {
        self.resetButton.hidden = NO;
        self.welcomeLabel.text = [NSString stringWithFormat:@"%d", count];
    }
}

@end
