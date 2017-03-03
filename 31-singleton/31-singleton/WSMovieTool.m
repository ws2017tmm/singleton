//
//  WSMovieTool.m
//  31-singleton(单例模式)
//
//  Created by XSUNT45 on 16/1/12.
//  Copyright (c) 2016年 XSUNT45. All rights reserved.
//

#import "WSMovieTool.h"

@implementation WSMovieTool
WSSingletonM

//全局唯一的变量
//static id _instance;

////重写alloc方法,alloc方法底层是调用--allocWithZone:
//+ (instancetype)allocWithZone:(struct _NSZone *)zone {
//    
//    if (!_instance) {//防止频繁加锁,保证只加锁一次
//        @synchronized(self){//加锁
//            if (!_instance) {//保证只分配一次内存
//                _instance = [super allocWithZone:zone];
//            }
//        }
//    }
//    return _instance;
//}
//
////提供方法供外界方便访问---一般以 share + (类名去掉前缀)
//+ (instancetype)shareMovieTool {
//    if (!_instance) {//防止频繁加锁,保证只加锁一次
//        @synchronized(self){//加锁
//            if (!_instance) {//保证只分配一次内存
//                _instance = [[self alloc] init];
//            }
//        }
//    }
//    return _instance;
//}
//
////重写copyWithZone:方法,防止外界利用copy创建对象
//- (id)copyWithZone:(NSZone *)zone {
//    return _instance;
//}

//#pragma mark - 利用GCD实现单例
//
////重新alloc方法,alloc方法底层是调用--allocWithZone:
//+ (instancetype)allocWithZone:(struct _NSZone *)zone {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _instance = [super allocWithZone:zone];
//    });
//    return _instance;
//}
//
////提供方法供外界方便访问---一般以 share + (类名去掉前缀)
//+ (instancetype)shareMovieTool {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _instance = [[self alloc] init];
//    });
//    return _instance;
//}
//
////重写copyWithZone:方法,防止外界利用copy创建对象
//- (id)copyWithZone:(NSZone *)zone {
//    return _instance;
//}
//

//-(NSUInteger)retainCount { return 1; }
//-(instancetype)retain { return self; }
//-(oneway void)release {}
//-(instancetype)autorelease {return self; }

@end
