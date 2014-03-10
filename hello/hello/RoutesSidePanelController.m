//
//  RoutesSidePanelController.m
//  hello
//
//  Created by Slava Palaumov on 10.03.14.
//  Copyright (c) 2014 Palaum. All rights reserved.
//

#import "RoutesSidePanelController.h"

@implementation RoutesSidePanelController

-(void) awakeFromNib
{
    [self setLeftPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"]];
    [self setCenterPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"centerViewController"]];
}

@end
