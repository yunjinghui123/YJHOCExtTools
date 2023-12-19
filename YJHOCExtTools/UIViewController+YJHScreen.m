//
//  UIViewController+Screen.m
//  YouPinHui
//
//  Created by yunjinghui on 2023/9/15.
//  Copyright © 2023 com.huimai.shop. All rights reserved.
//

#import "UIViewController+YJHScreen.h"

@implementation UIViewController (YJHScreen)

///强制横屏
- (void)switchOrientation:(BOOL)isFullScreen {
    if (@available(iOS 16.0, *)) {
        UIInterfaceOrientationMask orientation = isFullScreen ? UIInterfaceOrientationMaskLandscape : UIInterfaceOrientationMaskPortrait;
        [self setNeedsUpdateOfSupportedInterfaceOrientations];
        NSArray<UIScene *> *connectedScenes = [[UIApplication sharedApplication].connectedScenes allObjects];
        UIWindowScene *ws = (UIWindowScene *)connectedScenes.firstObject;
        UIWindowSceneGeometryPreferencesIOS *geometryPreferences = [[UIWindowSceneGeometryPreferencesIOS alloc] init];
        geometryPreferences.interfaceOrientations = orientation;
        [ws requestGeometryUpdateWithPreferences:geometryPreferences
            errorHandler:^(NSError * _Nonnull error) {
            NSLog(@"%@", error);
        }];
    } else {
        //调用横屏代码
        NSNumber *resetOrientationTarget = [NSNumber numberWithInteger:UIInterfaceOrientationUnknown];
        [[UIDevice currentDevice] setValue:resetOrientationTarget forKey:@"orientation"];
        UIInterfaceOrientation oriention = isFullScreen ? UIInterfaceOrientationLandscapeRight : UIInterfaceOrientationPortrait;
        NSNumber *orientationTarget = [NSNumber numberWithInteger:oriention];
        [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
        [UIViewController attemptRotationToDeviceOrientation];
    }
}


@end
