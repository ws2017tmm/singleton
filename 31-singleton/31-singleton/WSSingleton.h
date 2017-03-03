//
//  WSSingleton.h
//  31-singleton(单例模式)
//
//  Created by XSUNT45 on 16/1/12.
//  Copyright (c) 2016年 XSUNT45. All rights reserved.
//

#ifndef _1_singleton_______WSSingleton_h
#define _1_singleton_______WSSingleton_h


#endif


//.h文件
#define WSSingletonH + (instancetype)shareMovieTool;

//.m文件
#if __has_feature(objc_arc)//ARC

    #define WSSingletonM \
    static id _instance;\
    + (instancetype)allocWithZone:(struct _NSZone *)zone {\
        static dispatch_once_t onceToken;\
        dispatch_once(&onceToken, ^{\
        _instance = [super allocWithZone:zone];\
        });\
        return _instance;\
    }\
    \
    + (instancetype)shareMovieTool {\
        static dispatch_once_t onceToken;\
        dispatch_once(&onceToken, ^{\
        _instance = [[self alloc] init];\
        });\
        return _instance;\
    }\
    \
    - (id)copyWithZone:(NSZone *)zone {\
        return _instance;\
    }

#else//MRC

    #define WSSingletonM \
    static id _instance;\
    + (instancetype)allocWithZone:(struct _NSZone *)zone {\
        static dispatch_once_t onceToken;\
        dispatch_once(&onceToken, ^{\
        _instance = [super allocWithZone:zone];\
        });\
        return _instance;\
    }\
    \
    + (instancetype)shareMovieTool {\
        static dispatch_once_t onceToken;\
        dispatch_once(&onceToken, ^{\
        _instance = [[self alloc] init];\
        });\
        return _instance;\
    }\
    \
    - (id)copyWithZone:(NSZone *)zone {\
        return _instance;\
    }\
    \
    -(NSUInteger)retainCount { return 1; }\
    -(instancetype)retain { return self; }\
    -(oneway void)release {}\
    -(instancetype)autorelease {return self; }

#endif



