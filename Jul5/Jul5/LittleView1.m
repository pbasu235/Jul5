//
//  LittleView1.m
//  Jul5
//
//  Created by Piyal Basu on 7/5/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "LittleView1.h"

@implementation LittleView1

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
        button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		CGRect b = self.bounds;
		CGSize s = CGSizeMake(200, 40);	//size of button
        
		button.frame = CGRectMake(
                                  b.origin.x + (b.size.width - s.width) / 2,
                                  b.origin.y + (b.size.height - s.height) / 2,
                                  s.width,
                                  s.height
                                  );
        
		[button setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
		[button setTitle: @"The owl says HOOOOOOT!" forState: UIControlStateNormal];
        
		[button addTarget: [UIApplication sharedApplication].delegate
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        
		[self addSubview: button];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
{
    
    // Drawing code
    
	NSString *string = @"The world's worst children's book: Swipe down to begin";
	CGPoint point = CGPointMake(70.0, 100.0);
    CGPoint caption = CGPointMake(40.0, 250.0);
	UIFont *font = [UIFont systemFontOfSize: 10];
	[string drawAtPoint: caption withFont: font];
    
    UIImage *image = [UIImage imageNamed: @"o.jpg"];	//100 by 100
    if (image == nil) {
        NSLog(@"could not find the image");
        return;
    }
    
    
    [image drawAtPoint: point];
}


@end
