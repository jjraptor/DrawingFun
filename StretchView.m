//
//  StretchView.m
//  DrawingFun
//
//  Created by John Eigenbrode on 1/22/14.
//  Copyright (c) 2014 John Eigenbrode. All rights reserved.
//

#import "StretchView.h"

@implementation StretchView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Seed the random number generator
        srandom((unsigned)time(NULL));
        
        // Create a path object
        path = [NSBezierPath bezierPath];
        [path setLineWidth:3.0];
        NSPoint point = [self randomPoint];
        [path moveToPoint:point];
        int i;
        for (i = 0; i < 15 ; i++)
        {
            point = [self randomPoint];
            [path lineToPoint:point];
        }
        [path closePath];
    }
    return self;
}

// randomPoint returns a rand point inside the view
-(NSPoint)randomPoint
{
    NSPoint result;
    NSRect rect = [self bounds];
    result.x = rect.origin.x + random() % (int)rect.size.width;
    result.y = rect.origin.y + random() % (int)rect.size.height;
    return result;
}

- (void)drawRect:(NSRect)dirtyRect
{
    //[super drawRect:dirtyRect];
    
    NSRect bounds = [self bounds];
    
    // Fill with green
    [[NSColor greenColor] set];
    [NSBezierPath fillRect:bounds];
    
    // Draw path in white
    [[NSColor whiteColor] set];
    [path fill];
    
    [[NSColor redColor] set];
    [path stroke];
}

@end
