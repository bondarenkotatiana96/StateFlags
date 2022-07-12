//
//  StateCollectionViewCell.h
//  StateFlags
//
//  Created by Tatiana Bondarenko on 7/12/22.
//

#import <UIKit/UIKit.h>
#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@interface StateCollectionViewCell : UICollectionViewCell

// var state: State? { didSet { uodateViews() }}

@property (nonatomic, strong, nonnull) State *state;
@property (weak, nonatomic) IBOutlet UIImageView *flagImage;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;

@end

NS_ASSUME_NONNULL_END
