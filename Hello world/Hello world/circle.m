//
//  circle.m
//  Hello world
//
//  Created by 爽 张 on 15/12/31.
//  Copyright © 2015年 爽 张. All rights reserved.
//

#import "circle.h"

@implementation circle

//init
-(instancetype)init
{
    self = [super init];
    // self = nil; // don't do this
    
    return self;
}

//destory
-(void)dealloc{
    NSLog(@"circle is releasing.");
}

// draw
- (void) draw
{
    NSLog(@"draw circle!");
}

// description
- (NSString*) description
{
    return @"circle";
}

@end
