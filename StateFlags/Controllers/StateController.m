//
//  StateController.m
//  StateFlags
//
//  Created by Tatiana Bondarenko on 7/12/22.
//

#import "StateController.h"
#import "StateHelper.h"
#import "State.h"

@implementation StateController

+ (StateController *)shared
{
    static StateController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        shared = [StateController new];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _states = [self addStates];
    }
    return self;
}

- (NSArray *)addStates
{
    // var states: [State] = []
    // for stateName in states { }
    NSMutableArray *states = [[NSMutableArray alloc] init];
    for (NSString *stateName in [StateHelper states]) {
        // get an index
        NSInteger index = [[StateHelper states] indexOfObject:stateName];
        NSString *abbreviation = [[StateHelper abbreviations] objectAtIndex:index];
        State *state = [[State alloc] initWithName:stateName abbreviation:abbreviation];
        [states addObject:state];
        
        // the above is equivalent to states.append(state) in Swift
        
    }
    return states;
}

@end
