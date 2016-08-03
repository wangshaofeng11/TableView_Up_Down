//
//  ViewController.m
//  TableView_Up_Down
//
//  Created by 爱康国宾 on 15/5/14.
//  Copyright (c) 2015年 爱康国宾. All rights reserved.
//

#import "ViewController.h"
#import "ViewTableViewCell.h"
#import "UIButton+Mybutton.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{

    UITableView *_tableView;
    
    NSArray *_titleArray;
    
    BOOL status[7][2];
    
    NSString *aa; //此处故意更改试试git
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    _titleArray = [NSMutableArray arrayWithObjects:@"设备", @"计算机", @"挖掘机", @"安防", @"电子", @"行业新闻", @"管理频道", nil];
    
}

#pragma mark-UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return _titleArray.count;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    return _titleArray[section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *iden;
    if (status[indexPath.section][indexPath.row]) {
        
        iden = @"cell";
    }else{
    
        iden = @"cellOne";
    }
    
    ViewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:iden];
    
    if (cell == nil) {
        
        cell = [[ViewTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iden];
    }
    
    cell.button.indexPath = indexPath;
    [cell.button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    if (status[indexPath.section][indexPath.row]) {
        
        return 60;
    }else{
    
        return 100;
    }
}

- (void)buttonAction:(UIButton *)button{
    
    status[button.indexPath.section][button.indexPath.row] = !status[button.indexPath.section][button.indexPath.row];
    
    [_tableView reloadData];
}



@end
