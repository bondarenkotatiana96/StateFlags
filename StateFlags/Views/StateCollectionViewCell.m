//
//  StateCollectionViewCell.m
//  StateFlags
//
//  Created by Tatiana Bondarenko on 7/12/22.
//

#import "StateCollectionViewCell.h"
#import "State.h"

@implementation StateCollectionViewCell

// var state: State? { didSet { uodateViews() }}
- (void)setState:(State *)state
{
    [self updateWithState:state];
}

// func updateWithState(state: State) {}
- (void)updateWithState:(State *)state
{
    if (state) {
        _flagImage.image = [UIImage imageNamed:state.abbreviation];
        _stateLabel.text = [state name];
    }
}

@end
