//
//  HomeTabController.m
//  SCUxCHG
//
//  Created by 杨京蕾 on 5/7/16.
//  Copyright © 2016 yang. All rights reserved.
//

#import "HomeTabController.h"

@interface HomeTabController () <UITableViewDelegate, UITableViewDataSource> {
    UITableView *_rightTableView;
}

@end

@implementation HomeTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    self.navigationItem.leftBarButtonItem = nil;
    self.title = @"SCUxCHG";
    
    //right table view
    _rightTableView = [[UITableView alloc] init];
    _rightTableView.tableFooterView = [[UIView alloc] init];    //在table下方显示空白view
    [self.view addSubview:_rightTableView];
    
    _rightTableView.dataSource = self;
    _rightTableView.delegate = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end