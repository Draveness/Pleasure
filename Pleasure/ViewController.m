//
//  ViewController.m
//  Pleasure
//
//  Created by apple on 15/6/1.
//  Copyright (c) 2015年 DeltaX. All rights reserved.
//

#import "ViewController.h"
#import "PLSIcon.h"
#import "PLSIcon+Pleasure.h"

@interface ViewController ()

@property (nonatomic, strong) PLSIcon *icon;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.icon = [[PLSIcon alloc] initWithFrame:CGRectMake(100, 100, 40, 40) icon:[UIImage imageNamed:@"detail_user"]];
    self.icon.iconScale = 2.0;
    self.icon.tapBlock =  ^(PLSIcon *icon) {
        [icon pop];
    };

    [self.view addSubview:self.icon];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}


@end
