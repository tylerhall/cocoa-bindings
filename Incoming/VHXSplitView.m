//
//  VHXSplitView.m
//  VirtualHostX
//
//  Created by Hall Tyler on 11/23/15.
//  Copyright © 2015 Click On Tyler. All rights reserved.
//

#import "VHXSplitView.h"

@interface VHXSplitView () <NSSplitViewDelegate>

@end

@implementation VHXSplitView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];

    if(self) {
        self.delegate = self;

        _minimumSplitViewSize = 150.0;
        _maximumSplitViewSize = 300.0;
    }

    return self;
}

- (CGFloat)splitView:(NSSplitView *)splitView constrainMinCoordinate:(CGFloat)proposedMin ofSubviewAt:(NSInteger)dividerIndex
{
    return self.minimumSplitViewSize;
}


- (CGFloat)splitView:(NSSplitView *)splitView constrainMaxCoordinate:(CGFloat)proposedMax ofSubviewAt:(NSInteger)dividerIndex
{
    return self.maximumSplitViewSize;
}

- (BOOL)splitView:(NSSplitView *)splitView shouldAdjustSizeOfSubview:(NSView *)subview
{
    return (subview == [self subviews][1]);
}

@end
