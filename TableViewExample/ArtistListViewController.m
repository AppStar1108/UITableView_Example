//
//  ArtistListViewController.m
//  TableViewExample
//
//  Created by Prince on 12/30/16.
//  Copyright © 2016 Prince. All rights reserved.
//

#import "ArtistListViewController.h"
#import "ArtistTableViewCell.h"
#import "ArtistDetailViewController.h"
#import "Student.h"

@interface ArtistListViewController ()

@property (nonatomic ,assign) IBOutlet UITableView *tableView;

@property (nonatomic ,strong) NSMutableArray *studentArr;

@end

@implementation ArtistListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
//    
    _studentArr = [NSMutableArray new];
    for (int i = 0 ; i < 100 ; i ++)
    {
        Student *student = [Student new];
        student.name = [NSString stringWithFormat:@"Student %d" ,i];
        student.avatar = @"avatar.png";
        
        [_studentArr addObject:student];
    }
    
    [_tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"detailSegue"])
    {
        ArtistDetailViewController *vc = (ArtistDetailViewController *)segue.destinationViewController;
        vc.student = (Student *)sender;
        
    }
}

#pragma mark - UITableViewDelegate ,UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _studentArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ArtistTableViewCell *cell = (ArtistTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"artistCell" forIndexPath:indexPath];
    Student *student = [_studentArr objectAtIndex:indexPath.row];
    cell.nameLbl.text = student.name;
    cell.avartarImageView.image = [UIImage imageNamed:student.avatar];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Student *student = [_studentArr objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"detailSegue" sender:student];
}

@end
