//
//  AppKitLoader.m
//  SwiftIndiaDemo
//
//  Created by Noah Gilmore on 7/28/19.
//  Copyright © 2019 Noah Gilmore. All rights reserved.
//

#import "AppKitLoader.h"

@implementation AppKitLoader

- (id)loadBundle:(NSBundle *)bundle {
    return [[[bundle principalClass] alloc] init];
}

@end
