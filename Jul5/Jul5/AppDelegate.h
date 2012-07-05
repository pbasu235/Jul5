//
//  AppDelegate.h
//  Jul5
//
//  Created by Piyal Basu on 7/5/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID
@class BigView;

@interface AppDelegate: UIResponder <UIApplicationDelegate> {
    	SystemSoundID sid;
	BigView *bigView;
	UIWindow *_window;
}

- (void) touchUpInside: (id) sender;

@property (strong, nonatomic) UIWindow *window;

@end
