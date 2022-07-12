//
//  StateController.h
//  StateFlags
//
//  Created by Tatiana Bondarenko on 7/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StateController : NSObject

// Source of truth
@property (nonatomic, strong) NSArray *states;

// Singleton
+ (StateController *)shared;

- (NSArray *)addStates;

@end

NS_ASSUME_NONNULL_END
