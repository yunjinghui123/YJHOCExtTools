//
//  YJHOCExtTools.m
//  YJHOCExtToolsExample
//
//  Created by yunjinghui on 2023/11/24.
//

#import "YJHOCExtTools.h"
#import <sys/utsname.h>
#import "YJHOCExtTools+machineModel.h"

@interface YJHOCExtTools ()
@end

@implementation YJHOCExtTools

// 设备型号
- (NSString *)machineModel {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *machine = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    if ([machine containsString:@"iPhone"]) {
        machine = [self _iPhonePlatform:machine];
    } else if ([machine containsString:@"iPad"]) {
        machine = [self _iPadPlatform:machine];
    } else if ([machine containsString:@"iPod"]) {
        machine = [self _iPodPlatform:machine];
    } else if ([machine isEqualToString:@"i386"] || [machine isEqualToString:@"x86_64"]) {
        machine = @"Simulator";
    } else {
        machine = @"Unknown Device";
    }
    return machine;
}


@end
