//
//  group.h
//  Hello world
//
//  Created by 爽 张 on 16/1/6.
//  Copyright © 2016年 爽 张. All rights reserved.
//

#import <Foundation/Foundation.h>

@class shape;

@interface group : NSObject
{
    NSMutableArray* shapes;
}
// init
-(instancetype)init;
+(instancetype)arrayWithCapasity:(NSUInteger) numItem;
// method
-(void)addShape:(shape*) aShape;
-(shape*)objectAtIndex:(NSUInteger) index;
-(NSUInteger)count;
-(void)removeObjectAtIndex:(NSUInteger) index;
@end
