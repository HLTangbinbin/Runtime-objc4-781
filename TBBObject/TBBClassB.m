//
//  TBBClassB.m
//  TBBObject
//
//  Created by coooo on 2021/1/21.
//

#import "TBBClassB.h"

@implementation TBBClassB
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"ClassB接收到变化");
}
@end
