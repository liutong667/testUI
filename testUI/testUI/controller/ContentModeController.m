//
//  ContentModeController.m
//  testUI
//
//  Created by liutong on 2017/11/24.
//  Copyright © 2017年 liutong. All rights reserved.
//

#import "ContentModeController.h"

#define ScreenWidth  [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height


@interface ContentModeController ()

@end

@implementation ContentModeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"
    UIImage *googleImage = [UIImage imageNamed:@"googlelogo_272x92.png"];
    NSInteger imageWidth = googleImage.size.width;
    NSInteger imageHeight = googleImage.size.height;
    
    NSInteger viewHeight = 100;
    NSInteger labelHeight = 20;
    NSInteger row1 = 64 + imageHeight + labelHeight + 20;
    NSInteger row2 = row1 + viewHeight + labelHeight + 20;
    NSInteger row3 = row2 + viewHeight + labelHeight + 20;
    NSInteger row4= row3 + viewHeight + labelHeight + 20;
    NSInteger col1 = 10;
    NSInteger col2 = col1 + viewHeight + (ScreenWidth - viewHeight*3 - 20)/2;
    NSInteger col3 = ScreenWidth - viewHeight - 10;
    
    UIView *originalView = [self getImageViewWithFrame:CGRectMake((ScreenWidth - imageWidth)/2, 64, imageWidth, imageHeight + labelHeight) Image:googleImage title:@"original image" ContentMode:UIViewContentModeScaleToFill];
    
    UIView *scaleFillView = [self getImageViewWithFrame:CGRectMake(col1, row1, 100, 100 + 20) Image:googleImage title:@"scale to Fill" ContentMode:UIViewContentModeScaleToFill];
    UIView *AspectFitView = [self getImageViewWithFrame:CGRectMake(col2, row1, 100, 100 + 20) Image:googleImage title:@"Aspect Fit" ContentMode:UIViewContentModeScaleAspectFit];
    UIView *aspectFillView = [self getImageViewWithFrame:CGRectMake(col3, row1, 100, 100 + 20) Image:googleImage title:@"Aspect Fill" ContentMode:UIViewContentModeScaleAspectFill];
    
    
    UIView *topLeftView = [self getImageViewWithFrame:CGRectMake(col1, row2, 100, 100 + 20) Image:googleImage title:@"Top Left" ContentMode:UIViewContentModeTopLeft];
    UIView *topView = [self getImageViewWithFrame:CGRectMake(col2, row2, 100, 100 + 20) Image:googleImage title:@"Top" ContentMode:UIViewContentModeTop];
    UIView *topRightView = [self getImageViewWithFrame:CGRectMake(col3, row2, 100, 100 + 20) Image:googleImage title:@"Top Right" ContentMode:UIViewContentModeTopRight];
    
    UIView *LeftView = [self getImageViewWithFrame:CGRectMake(col1, row3, 100, 100 + 20) Image:googleImage title:@"Left" ContentMode:UIViewContentModeLeft];
    UIView *CenterView = [self getImageViewWithFrame:CGRectMake(col2, row3, 100, 100 + 20) Image:googleImage title:@"Center" ContentMode:UIViewContentModeCenter];
    UIView *RightView = [self getImageViewWithFrame:CGRectMake(col3, row3, 100, 100 + 20) Image:googleImage title:@"Right" ContentMode:UIViewContentModeRight];
    
    UIView *BottomLeftView = [self getImageViewWithFrame:CGRectMake(col1, row4, 100, 100 + 20) Image:googleImage title:@"Bottom Left" ContentMode:UIViewContentModeBottomLeft];
    UIView *BottomCenterView = [self getImageViewWithFrame:CGRectMake(col2, row4, 100, 100 + 20) Image:googleImage title:@"Bottom" ContentMode:UIViewContentModeBottom];
    UIView *BottomRightView = [self getImageViewWithFrame:CGRectMake(col3, row4, 100, 100 + 20) Image:googleImage title:@"Bottom Right" ContentMode:UIViewContentModeBottomRight];
#pragma clang diagnostic pop
}

- (UIView *)getImageViewWithFrame:(CGRect)frame Image:(UIImage *)image title:(NSString *)title ContentMode:(UIViewContentMode)mode {
    UIView *view = [[UIView alloc] initWithFrame:frame];
    CGRect imageViewFrame = CGRectMake(0, 0, frame.size.width, frame.size.height - 20);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:imageViewFrame];
    imageView.image = image;
    imageView.layer.borderColor = [UIColor blackColor].CGColor;
    imageView.layer.borderWidth = 1;
    imageView.contentMode = mode;
    imageView.clipsToBounds = YES;
    
    CGRect labelFrame = CGRectMake(0, imageViewFrame.size.height, frame.size.width,20);
    UILabel *label = [[UILabel alloc] initWithFrame:labelFrame];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = title;
    
    [view addSubview:imageView];
    [view addSubview:label];
    [self.view addSubview:view];
    return view;
}

@end
