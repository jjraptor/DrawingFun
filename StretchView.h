//
//  StretchView.h
//  DrawingFun
//
//  Created by John Eigenbrode on 1/22/14.
//  Copyright (c) 2014 John Eigenbrode. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface StretchView : NSView
{
    NSBezierPath *path;
}

- (NSPoint)randomPoint;

@end
