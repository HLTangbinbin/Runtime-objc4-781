//
//  TBBMan.m
//  TBBObject
//
//  Created by coooo on 2020/12/18.
//

#import "TBBMan.h"

@implementation TBBMan
+ (void)initialize
{
    if (self == [self class]) {
        NSLog(@"%s",__func__);
    }
}
+ (void)load {
    NSLog(@"%s",__func__);
}
+ (void)test {
    NSLog(@"%s",__func__);
}
@end
