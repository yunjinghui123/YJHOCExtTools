//
//  YJHOCExtTools.m
//  YJHOCExtToolsExample
//
//  Created by yunjinghui on 2023/11/24.
//

#import "YJHOCExtTools.h"
#import "YJHOCExtTools+machineModel.h"

@implementation YJHOCExtTools

+ (instancetype)sharedManager {
    static YJHOCExtTools *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [self manager];
    });
    return _sharedManager;
}

+ (instancetype)manager {
    return [[self alloc] init];;
}

- (instancetype)init {
    self = [super init];
    if (self) {

    }
    return self;
}

// 手机型号
+ (NSString *)machineModel {
    return [YJHOCExtTools sharedManager].machinePlatform;
}
@end
