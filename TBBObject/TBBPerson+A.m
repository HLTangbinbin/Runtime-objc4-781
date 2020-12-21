//
//  TBBPerson+A.m
//  TBBObject
//
//  Created by coooo on 2020/12/21.
//

#import "TBBPerson+A.h"

@implementation TBBPerson (A)
+ (void)initialize
{
    if (self == [self class]) {
        NSLog(@"%s",__func__);
    }
}
+ (void)load {
    NSLog(@"%s",__func__);
}
@end
