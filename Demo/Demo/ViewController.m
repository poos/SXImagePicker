//
//  ViewController.m
//  Demo
//
//  Created by n369 on 16/8/30.
//  
//

#import "ViewController.h"
#import "SXImagePicker.h"

@interface ViewController () {
    UIImageView *_imageView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_imageView];
    UIButton *right = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    right.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    [right setTitle:@"Camera" forState:UIControlStateNormal];
    [right setTitle:@"PhotoLibrary" forState:UIControlStateSelected];
    [right addTarget:self action:@selector(rightAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:right];
}

- (void)rightAction:(UIButton *)button {
    if (!button.selected) {
        [SXImagePicker pickerCameraImageWithSelf:self done:^(NSDictionary<NSString *,id> *info, UIImage *imageData) {
            _imageView.image = imageData;
        }];
    } else {
        [SXImagePicker pickerPhotoLibraryImageWithSelf:self done:^(NSDictionary<NSString *,id> *info, UIImage *imageData) {
            _imageView.image = imageData;
        }];
    }
    button.selected = !button.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
