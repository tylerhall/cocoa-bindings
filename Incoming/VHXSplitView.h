//
//  VHXSplitView.h
//  VirtualHostX
//
//  Created by Hall Tyler on 11/23/15.
//  Copyright © 2015 Click On Tyler. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface VHXSplitView : NSSplitView

@property (nonatomic, assign) CGFloat minimumSplitViewSize;
@property (nonatomic, assign) CGFloat maximumSplitViewSize;

@end
