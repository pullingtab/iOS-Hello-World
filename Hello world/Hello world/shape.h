//
//  shape.h
//  Hello world
//
//  Created by 爽 张 on 15/12/31.
//  Copyright © 2015年 爽 张. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface shape : NSObject
{
    int type;
    int color;
}
@property(nonatomic) int type;
@property(nonatomic) int color;
- (void) draw;
//- (void) setType: (int)t;
//- (void) setColor: (int)c;
- (int) type;
@end
