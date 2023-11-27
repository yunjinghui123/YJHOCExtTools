//
//  YJHOCExtTools+machineModel.h
//  YJHOCExtToolsExample
//
//  Created by yunjinghui on 2023/11/27.
//

#import "YJHOCExtTools.h"

NS_ASSUME_NONNULL_BEGIN

@interface YJHOCExtTools (machineModel)
//iPhone设备
- (NSString *)_iPhonePlatform:(NSString *)platform;
//iPad设备
- (NSString *)_iPadPlatform:(NSString *)platform;
//iPod设备
- (NSString *)_iPodPlatform:(NSString *)platform;
@end

NS_ASSUME_NONNULL_END
