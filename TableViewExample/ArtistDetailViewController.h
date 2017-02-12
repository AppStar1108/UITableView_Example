//
//  ArtistDetailViewController.h
//  TableViewExample
//
//  Created by Prince on 12/30/16.
//  Copyright © 2016 Prince. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"

@interface ArtistDetailViewController : UIViewController

@property (nonatomic ,strong) Student *student;

@property (nonatomic ,assign) IBOutlet UIImageView *avartarImageView;
@property (nonatomic ,assign) IBOutlet UILabel *nameLbl;


@end
