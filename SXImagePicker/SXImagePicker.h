//
//  SXImagePicker.h
//  Demo
//
//  Created by n369 on 16/8/30.
//  Copyright © 2016年 SX. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ChooseImageBlock)(NSDictionary<NSString *,id> *info, UIImage *imageData);

@interface SXImagePicker : NSObject

+ (void)pickerCameraImageWithSelf:(UIViewController *)selfController done:(ChooseImageBlock)doneBlock;
+ (void)pickerPhotoLibraryImageWithSelf:(UIViewController *)selfController done:(ChooseImageBlock)doneBlock;

@end
