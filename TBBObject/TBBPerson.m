//
//  TBBPerson.m
//  TBBObject
//
//  Created by 唐彬彬 on 2020/12/17.
//

#import "TBBPerson.h"

@implementation TBBPerson
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
