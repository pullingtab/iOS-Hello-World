//
//  main.m
//  Hello world
//
//  Created by 爽 张 on 15/12/9.
//  Copyright © 2015年 爽 张. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "shape.h"
#import "circle.h"
#import "triangle.h"
#import "group.h"

@class triangle;
@class circle;

NSString *bool2String(bool boolean)
{
    if(boolean)
        return @"YES";
    else
        return @"NO";
}

bool fIsTheSame(int a, int b)
{
    return a==b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BOOL isHandsome = YES;
        if(isHandsome)
            NSLog(@"Hello, World!");
        
        bool isTheSame = NO;
        isTheSame = fIsTheSame(15, 15);
        NSString *str = bool2String(isTheSame);
        NSLog(@"are 15 and 15 the same? %@", str);
        
        isTheSame = fIsTheSame(17, 23);
        str = bool2String(isTheSame);
        NSLog(@"are 17 and 23 the same? %@", str);
        
        shape* cir = [[circle alloc] init];
        [cir setColor:3];
        [cir setType:4];
        [cir draw];
        
        shape* tri = [[triangle alloc] init];
        [tri setColor:1];
        [tri setType:2];
        [tri draw];
        //[tri hulu];
        
        // test description method
        NSLog(@"this is %@ speaking.", tri);
        NSLog(@"this is %@ speaking.", cir);
        
        //
        // foundation-related test
        //
        
        // NSRange
        NSRange ra = {1,2};
        ra = NSMakeRange(0, 17);
        ra.location = 1;
        
        // NSPoint
        NSPoint p = {0.0,0.0};
        p = NSMakePoint(1.2, 3.4);
        p.x = 5.6;
        
        //NSSize
        NSSize s = {0.0, 0.0};
        s = NSMakeSize(2.3, 4.5);
        s.width = 6.7;
        s.height = 8.9;
        
        //NSRect
        NSRect r = {0.0, 0.0, 0.0, 0.0};
        r = NSMakeRect(1.2, 3.4, 5.6, 7.8);
        r.origin = NSMakePoint(5.6, 7.8);
        
        //NSString
        str = @"extern int fun(int );";
        NSString* pre = @"extern";
        NSString* end = @"const";
        if([str hasPrefix:@"extern"])
        {
            NSLog(@"\"%@\" starts with \"%@\"",str, pre);
        }
        if ([str hasSuffix:end]) {
            NSLog(@"\"%@\" ends with \"%@\"",str, end);
        }
        
        //group
        group* Group = [group arrayWithCapasity:2];
        [Group addShape:cir];
        [Group addShape:tri];
        NSLog(@"[Group count] = %lu",(unsigned long)[Group count]);
        for (int i=0; i<[Group count]; ++i) {
            NSLog(@"[Group objectAtIndex:%d] is %@", i, [Group objectAtIndex:i]);
        }
        for (int i=0; i<[Group count]; ) {
            [Group removeObjectAtIndex:0];
            NSLog(@"[Group removeObjectAtIndex:0]");
            NSLog(@"[Group count] = %lu", (unsigned long)[Group count]);
        }
        
    }
    return 0;
}
