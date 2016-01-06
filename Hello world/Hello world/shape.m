//
//  shape.m
//  Hello world
//
//  Created by 爽 张 on 15/12/31.
//  Copyright © 2015年 爽 张. All rights reserved.
//

#import "shape.h"

@implementation shape

// draw
- (void)draw
{
    NSLog(@"shape draw");
}

// setType
- (void)setType:(int)t
{
    type = t;
    NSLog(@"type = %d",t);
    
}

// setColor
- (void)setColor:(int)c
{
    color = c;
    NSLog(@"color = %d",c);
}

// type
- (int) type
{
    return type;
}

// description
- (NSString*) description
{
    return @"shape";
}

@end
