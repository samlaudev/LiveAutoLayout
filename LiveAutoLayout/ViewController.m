//
//  ViewController.m
//  LiveAutoLayout
//
//  Created by Sam Lau on 4/23/15.
//  Copyright (c) 2015 Sam Lau. All rights reserved.
//

#import "ViewController.h"
#import "LiveView.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - View controller lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    LiveView *liveView = [[LiveView alloc] initWithFrame:self.view.bounds];
    self.view = liveView;
}

@end
