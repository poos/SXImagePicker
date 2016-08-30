//
//  ViewImageController.h
//  ads
//
//  Created by n369 on 16/7/16.
//  Copyright © 2016年 n369. All rights reserved.
//

//选取图片后的展示图片页面
#import <UIKit/UIKit.h>

typedef void(^pickImageDoneBlock)();

@interface ViewImageController : UIViewController
@property (nonatomic, copy) pickImageDoneBlock block;

- (instancetype)initWithImage:(UIImage *)image block:(pickImageDoneBlock)block haveLeftBarButtonItem:(BOOL)isHave;
@end
