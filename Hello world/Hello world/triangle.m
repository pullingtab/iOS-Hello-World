//
//  triangle.m
//  Hello world
//
//  Created by 爽 张 on 15/12/31.
//  Copyright © 2015年 爽 张. All rights reserved.
//

#import "triangle.h"

@implementation triangle

// initialize
- (triangle*) init
{
    self = [super init];
    [self setType:30];
    NSLog(@"triangle init");
    return self;
}

- (void) dealloc{
    NSLog(@"triangle is releasing.");
}

// draw
- (void) draw
{
    NSLog(@"draw triangle!");
    NSLog(@"triangle is calling superclass's draw().");
    [super draw];
}

// description
- (NSString*) description
{
    return @"triangle";
}

@end
