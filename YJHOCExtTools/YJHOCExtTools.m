//
//  YJHOCExtTools.m
//  YJHOCExtToolsExample
//
//  Created by yunjinghui on 2023/11/24.
//

#import "YJHOCExtTools.h"
#import "YJHOCExtTools+machineModel.h"

@implementation YJHOCExtTools
// 手机型号
+ (NSString *)machineModel {
    return [YJHOCExtTools new].machinePlatform;
}
@end
