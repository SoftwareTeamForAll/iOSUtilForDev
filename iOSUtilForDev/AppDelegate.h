//
//  AppDelegate.h
//  iOSUtilForDev
//
//  Created by caiyidong on 3/8/16.
//  Copyright © 2016 caiyidong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMKMapManager.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) BMKMapManager* mapManager;


@end

