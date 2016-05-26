//
//  MainViewController.m
//  SDViewControlller
//
//  Created by Sovanndy Ul on 5/25/16.
//  Copyright © 2016 DMI. All rights reserved.
//

#import "MainViewController.h"
#import "CustomTableViewCell.h"

@interface MainViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *weeks;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.weeks = @[@"Sunday",@"Monday",@"Tuesday",@"Wednesday",@"ThrusDay",@"Friday",@"Satursday"];
  //[self.tableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"fuckyou"];
  [self.tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"fuckyou"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

  return [_weeks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  CustomTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"fuckyou"];
  
  cell.titleLabel.text = [self.weeks objectAtIndex:indexPath.row];
  
  return  cell;
}



@end
