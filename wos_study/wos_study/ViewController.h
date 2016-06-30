//
//  ViewController.h
//  wos_study
//
//  Created by Naver on 2016. 6. 29..
//  Copyright © 2016년 worksmobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExamCollectionViewCell.h"

@interface ViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) NSMutableArray *examCells;

@end

