//
//  State.h
//  StateFlags
//
//  Created by Tatiana Bondarenko on 7/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface State : NSObject

// let name: String
// * == POINTER (points to a specific place in the memory)
// Primitives: Base type that does not need a pointer (system recognizes this type)
// nonatomic vs atomic = 2 different resources accessing this variables at the same time (if it's allowed or no)
// copy will copy the data present in the memory location and will assign it to the variable so it's READ-ONLY. Not a reference property.
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *abbreviation;

// init(name: String, abbbreviation: String) {self.name = name ...}
- (instancetype)initWithName:(NSString *)name
                abbreviation:(NSString *)abbreviation;

@end

NS_ASSUME_NONNULL_END
