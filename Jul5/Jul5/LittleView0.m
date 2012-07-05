//
//  LittleView0.m
//  Jul5
//
//  Created by Piyal Basu on 7/5/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "LittleView0.h"

@implementation LittleView0

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{

    // Drawing code

	NSString *string = @"The world's worst children's book: Swipe down to begin";
	CGPoint point = CGPointMake(80.0, 100.0);
    CGPoint caption = CGPointMake(40.0, 230.0);
	UIFont *font = [UIFont systemFontOfSize: 10];
	[string drawAtPoint: caption withFont: font];
    
    UIImage *image = [UIImage imageNamed: @"cover.jpg"];	//100 by 100
    if (image == nil) {
        NSLog(@"could not find the image");
        return;
    }
    
    
    [image drawAtPoint: point];
}


@end
