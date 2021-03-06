//
//  ViewController.m
//  wos_study
//
//  Created by Naver on 2016. 6. 29..
//  Copyright © 2016년 worksmobile. All rights reserved.
//

#import "ViewController.h"
#import "ChangeTemperatureFormatViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize examCells;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    examCells = [@[@"Ex01", @"Ex02", @"Ex03"] mutableCopy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return examCells.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ExamCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ExamCell" forIndexPath:indexPath];
    cell.label.text = examCells[indexPath.row];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    long index = indexPath.row;
    UIStoryboard *storyboard = nil;
    UIViewController *viewController = nil;
    
    switch (index) {
        case 0:
            storyboard = [UIStoryboard storyboardWithName:@"ChangeTemperatureFormat" bundle:nil];
            viewController = [storyboard instantiateViewControllerWithIdentifier:@"chageTempFormatViewController"];
            break;
        default:
            break;
    }
    
    if (storyboard != nil && viewController != nil) {
        [[self navigationController] pushViewController:viewController animated:true];
    }
}

@end
