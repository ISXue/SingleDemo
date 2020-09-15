//
//  MainViewController.m
//  SingleDemo
//
//  Created by @孙学 on 2020/7/10.
//  Copyright © 2020 @SX. All rights reserved.
//

#import "MainViewController.h"
#import "FMDBViewController.h"
@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *mTableView;
@property (nonatomic,strong) NSMutableArray *mArray;
@end
static NSString *const MainViewControllerCellID = @"MainViewControllerCellID";
@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.mTableView];
    _mArray = [NSMutableArray array];
    [_mArray addObject:@"FMDB"];
}


#pragma mark - tableview delegate and datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _mArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MainViewControllerCellID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MainViewControllerCellID];
    }
    if (_mArray.count > indexPath.row) {
        cell.textLabel.text = _mArray[indexPath.row];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.navigationController pushViewController:[FMDBViewController new] animated:YES];
}

#pragma mark - lazy load
- (UITableView *)mTableView{
    if (!_mTableView) {
        _mTableView                 = [[UITableView alloc]init];
        _mTableView.frame           = CGRectMake(0, 64+5, KScreenWidth, KScreenHeight - 64-10);
        _mTableView.backgroundColor = [UIColor clearColor];
        _mTableView.delegate        = self;
        _mTableView.dataSource      = self;
    }
   return _mTableView;
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
