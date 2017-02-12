//
//  ArtistDetailViewController.m
//  TableViewExample
//
//  Created by Prince on 12/30/16.
//  Copyright © 2016 Prince. All rights reserved.
//

#import "ArtistDetailViewController.h"

@interface ArtistDetailViewController ()

@end

@implementation ArtistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _avartarImageView.image = [UIImage imageNamed:_student.avatar];
    _nameLbl.text = _student.name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
