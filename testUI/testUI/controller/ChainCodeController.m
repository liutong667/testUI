//
//  ChainCodeController.m
//  testUI
//
//  Created by liutong on 2017/11/27.
//  Copyright © 2017年 liutong. All rights reserved.
//

#import "ChainCodeController.h"

@interface LTView : UIView

- (instancetype)initWithFrame:(CGRect)frame Config:(void (^)(LTView *view))block;

//1、通过属性方式
@property (nonatomic, copy) LTView *(^lt_bgColor)(UIColor *);

//2、通过函数声明方式
-(LTView *(^)(CGFloat width))lt_viewWidth;
-(LTView *(^)(CGFloat height))lt_viewHeigth;
@end

@implementation LTView

- (instancetype)initWithFrame:(CGRect)frame Config:(void (^)(LTView *view))block {
    if (self = [super initWithFrame:frame]) {
        !block ?:block(self);
    }
    return self;
}

- (LTView *(^)(UIColor *))lt_bgColor {
    return ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

- (LTView *(^)(CGFloat))lt_viewWidth {
    return ^(CGFloat width) {
        CGRect frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
        self.frame = frame;
        return self;
    };
}

-(LTView *(^)(CGFloat))lt_viewHeigth {
    return ^(CGFloat height) {
        CGRect frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
        self.frame = frame;
        return self;
    };
}
@end

@implementation ChainCodeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    LTView *view = [[LTView alloc] initWithFrame:CGRectMake(100, 100, 0, 0) Config:^(LTView *view) {
        view.lt_bgColor([UIColor redColor]).lt_viewWidth(100).lt_viewHeigth(100);
    }];
    view.lt_bgColor([UIColor blueColor]).lt_viewWidth(200).lt_viewHeigth(200);
    [self.view addSubview:view];
    self.view.backgroundColor = [UIColor whiteColor];
}

@end


