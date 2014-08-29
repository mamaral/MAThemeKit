//
//  MainViewController.m
//  MAThemeKit
//
//  Created by Mike on 8/29/14.
//  Copyright (c) 2014 Mike Amaral. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Main View";
    
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 35)];
    UIBarButtonItem *flexibleItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *dismissButton = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss" style:UIBarButtonItemStylePlain target:self action:@selector(dismiss)];
    toolbar.items = @[flexibleItem, dismissButton];
    
    _searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 50)];
    _searchBar.showsCancelButton = YES;
    _searchBar.inputAccessoryView = toolbar;
    _searchBar.delegate = self;
    [self.view addSubview:_searchBar];
    
    UISwitch *demoSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(20, 60, 100, 50)];
    [self.view addSubview:demoSwitch];
    
    UIButton *demoButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 100, 50)];
    [demoButton setTitle:@"UIButton" forState:UIControlStateNormal];
    demoButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.view addSubview:demoButton];
    
    UIActivityIndicatorView *aiView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    aiView.frame = CGRectMake(120, 100, 50, 50);
    [self.view addSubview:aiView];
    [aiView startAnimating];
    
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"One", @"Two"]];
    segmentedControl.frame = CGRectMake(20, 160, 200, 40);
    [segmentedControl setSelectedSegmentIndex:0];
    [self.view addSubview:segmentedControl];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(20, 210, 200, 40)];
    slider.minimumValue = 0;
    slider.maximumValue = 100;
    slider.value = 50;
    [self.view addSubview:slider];
    
    UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.frame) - 150, CGRectGetWidth(self.view.frame), 50)];
    pageControl.numberOfPages = 3;
    [self.view addSubview:pageControl];
}

- (void)dismiss {
    [_searchBar resignFirstResponder];
}

@end
