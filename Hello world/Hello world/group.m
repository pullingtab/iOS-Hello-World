//
//  group.m
//  Hello world
//
//  Created by 爽 张 on 16/1/6.
//  Copyright © 2016年 爽 张. All rights reserved.
//

#import "group.h"
#import "shape.h"

@implementation group
// init
-(instancetype)init
{
    if(self = [super init])
    {
        shapes = [[NSMutableArray alloc] init];
    }
    
    return self;
}
+(instancetype)arrayWithCapasity:(NSUInteger) numItem
{
    group* gSelf = [[group alloc] init];
    if (gSelf) {
        gSelf->shapes = [NSMutableArray arrayWithCapacity:numItem];
        if (gSelf->shapes==nil) {
            gSelf = nil;
        }
    }
    return gSelf;
}
// method
-(void)addShape:(shape*) aShape{
    if (shapes) {
        [shapes addObject:aShape];
    }
}
-(shape*)objectAtIndex:(NSUInteger) index{
    if (shapes) {
        return [shapes objectAtIndex:index];
    }
    else{
        return nil;
    }
}
-(NSUInteger)count
{
    if (shapes) {
        return [shapes count];
    }
    else{
        return 0;
    }
}
-(void)removeObjectAtIndex:(NSUInteger) index{
    if (shapes) {
        [shapes removeObjectAtIndex:index];
    }
}
@end
