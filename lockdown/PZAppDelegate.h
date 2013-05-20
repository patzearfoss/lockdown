//
//  PZAppDelegate.h
//  lockdown
//
//  Created by Patrick Zearfoss on 5/19/13.
//  Copyright (c) 2013 pzearfoss. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PZViewController;

@interface PZAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) PZViewController *viewController;

@end
