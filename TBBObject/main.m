//
//  main.m
//  TBBObject
//
//  Created by 唐彬彬 on 2020/12/17.
//

#import <Foundation/Foundation.h>
#import "objc-runtime.h"
#import "TBBPerson.h"
#import "TBBMan.h"
#import "TBBClassA.h"
#import "TBBClassB.h"

typedef void (^Tbbblock)(void);
//int a = 10;
//static int b = 15;
//void add() {
//    NSLog(@"静态局部变量：b的值为%d",b);
//}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
//        BOOL re1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
//        BOOL re2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
//        BOOL re3 = [(id)[TBBPerson class] isKindOfClass:[TBBPerson class]];
//        BOOL re4 = [(id)[TBBPerson class] isMemberOfClass:[TBBPerson class]];
//        NSLog(@" re1 :%hhd\n re2 :%hhd\n re3 :%hhd\n re4 :%hhd\n",re1,re2,re3,re4);
//
//        BOOL re5 = [(id)[NSObject alloc] isKindOfClass:[NSObject class]];
//        BOOL re6 = [(id)[NSObject alloc] isMemberOfClass:[NSObject class]];
//        BOOL re7 = [(id)[TBBPerson alloc] isKindOfClass:[TBBPerson class]];
//        BOOL re8 = [(id)[TBBPerson alloc] isMemberOfClass:[TBBPerson class]];
//        NSLog(@" re5 :%hhd\n re6 :%hhd\n re7 :%hhd\n re8 :%hhd\n",re5,re6,re7,re8);
        
//        [TBBPerson test];
        
        //MARK：Block底层原理探究
//        1.访问全局变量
//        void (^Block1)(void) = ^{
//            NSLog(@"全局变量：a的值为%d,b的值为%d",a,b);
//        };
//        a = 1;
//        b = 1;
//        Block1();
//        NSLog(@"block类型为%@",[Block1 class]);
//
//        int a = 10;
//        static int b = 15;
//        void (^Block2)(void) = ^{
//            NSLog(@"局部变量：a的值为%d,b的值为%d",a,b);
//        };
//        a = 2;
//        b = 2;
//        Block2();
//        NSLog(@"block类型为%@",[Block2 class]);
        
        //MARK：KVO底层原理探究
        TBBClassA *objcA = [[TBBClassA alloc] init];
        TBBClassB *objcB = [[TBBClassB alloc] init];
        NSLog(@"ClassA被观察前:%@",objc_getClass("TBBClassA"));
        NSLog(@"ClassA被观察前:%@",[objcA class]);
        [objcA addObserver:objcB forKeyPath:@"age" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
        objcA.age = 10;
        NSLog(@"ClassA被观察后:%@",objc_getClass("TBBClassA"));
        NSLog(@"ClassA被观察后:%@",[objcA class]);
    }
    return 0;
}
