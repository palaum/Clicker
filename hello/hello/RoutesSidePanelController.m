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
    // изменяем размер левой панели
    self.shouldResizeLeftPanel = YES;
    
    // предотвращаем выход за границы левой панели при свайпе
    self.allowLeftOverpan = NO;
    
    [self setLeftPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"]];
    [self setCenterPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"centerViewController"]];
}

- (void)stylePanel:(UIView *)panel
{
    // т.к. метод предка добавляет скругления, то ничего не выполняя мы их убираем
}

@end
