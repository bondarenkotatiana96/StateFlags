//
//  StateCollectionViewController.m
//  StateFlags
//
//  Created by Tatiana Bondarenko on 7/12/22.
//

#import "StateCollectionViewController.h"
#import "StateController.h"
#import "State.h"
#import "StateCollectionViewCell.h"

@interface StateCollectionViewController ()

@end

@implementation StateCollectionViewController

static NSString * const reuseIdentifier = @"stateCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[StateCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
     return StateController.shared.states.count;
//    return [StateController shared states count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    StateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
//    cell.state = state
    State *state = StateController.shared.states[indexPath.row];
    cell.state = state;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

@end
