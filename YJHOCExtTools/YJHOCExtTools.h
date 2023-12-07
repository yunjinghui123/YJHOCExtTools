//
//  YJHOCExtTools.h
//  YJHOCExtToolsExample
//
//  Created by yunjinghui on 2023/11/24.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YJHOCExtTools : NSObject
// 手机型号
+ (NSString *)machineModel;
// 根据传入的字符串计算文字的尺寸
+ (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize;
@end

NS_ASSUME_NONNULL_END
