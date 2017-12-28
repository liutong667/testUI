//
//  UIColor+Hex.m
//  testUI
//
//  Created by 刘通 on 2017/11/29.
//  Copyright © 2017年 liutong. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)
+ (UIColor*)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue
{
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0 alpha:alphaValue];
}
+ (UIColor*)colorWithHex:(NSInteger)hexValue
{
    return [UIColor colorWithHex:hexValue alpha:1.0];
}

+ (UIColor *)yellow_1
{
    return [UIColor colorWithHex:0xfdd536];
}
+ (UIColor *)yellow_2
{
    return [UIColor colorWithHex:0xffbc2f];
}
+ (UIColor *)yellow_3
{
    return [UIColor colorWithHex:0xe7c332];
}
+ (UIColor *)yellowNight_1
{
    return [UIColor colorWithHex:0x7f5d17];
}
+ (UIColor *)yellowNight_2
{
    return [UIColor colorWithHex:0x7e6a1a];
}
+ (UIColor *)yellowNight_3
{
    return [UIColor colorWithHex:0x736118];
}

+ (UIColor *)red_1
{
    return [UIColor colorWithHex:0xee2f10];
}
+ (UIColor *)red_2
{
    return [UIColor colorWithHex:0xff644b];
}
+ (UIColor *)red_3
{
    return [UIColor colorWithHex:0xed5d49];
}
+ (UIColor *)redNight_1
{
    return [UIColor colorWithHex:0x6e2a2a];
}
+ (UIColor *)redNight_2
{
    return [UIColor colorWithHex:0x7f3125];
}
+ (UIColor *)redNight_3
{
    return [UIColor colorWithHex:0x762e24];
}

+ (UIColor *)blue_1
{
    return [UIColor colorWithHex:0x3d5699];
}
+ (UIColor *)blue_2
{
    return [UIColor colorWithHex:0x3b87f9];
}
+ (UIColor *)blueNight_1
{
    return [UIColor colorWithHex:0x374669];
}
+ (UIColor *)blueNight_2
{
    return [UIColor colorWithHex:0x1d437c];
}

+ (UIColor *)black_1
{
    return [UIColor colorWithHex:0x000000];
}
+ (UIColor *)black_2
{
    return [UIColor colorWithHex:0x161616];
}
+ (UIColor *)black_3
{
    return [UIColor colorWithHex:0x3a3a3a];
}
+ (UIColor *)black_4
{
    return [UIColor colorWithHex:0x454545];
}
+ (UIColor *)black_5
{
    return [UIColor colorWithHex:0x929292];
}
+ (UIColor *)black_6
{
    return [UIColor colorWithHex:0xb1b1b1];
}
+ (UIColor *)black_7
{
    return [UIColor colorWithHex:0xdadada];
}
+ (UIColor *)black_8
{
    return [UIColor colorWithHex:0xe4e4e4];
}
+ (UIColor *)black_9
{
    return [UIColor colorWithHex:0xf1f1f1];
}
+ (UIColor *)black_10
{
    return [UIColor colorWithHex:0xf2f2f2];
}
+ (UIColor *)black_11
{
    return [UIColor colorWithHex:0xffffff];
}
+ (UIColor *)blackNight_1
{
    return [UIColor colorWithHex:0x7a7a7a];
}
+ (UIColor *)blackNight_2
{
    return [UIColor colorWithHex:0x161616];
}
+ (UIColor *)blackNight_3
{
    return [UIColor colorWithHex:0x3a3a3a];
}
+ (UIColor *)blackNight_4
{
    return [UIColor colorWithHex:0x707070];
}
+ (UIColor *)blackNight_5
{
    return [UIColor colorWithHex:0x606060];
}
+ (UIColor *)blackNight_6
{
    return [UIColor colorWithHex:0x4e4e4e];
}
+ (UIColor *)blackNight_7
{
    return [UIColor colorWithHex:0x343434];
}
+ (UIColor *)blackNight_8
{
    return [UIColor colorWithHex:0x313131];
}
+ (UIColor *)blackNight_9
{
    return [UIColor colorWithHex:0x2e2e2e];
}
+ (UIColor *)blackNight_10
{
    return [UIColor colorWithHex:0x2a2a2a];
}
+ (UIColor *)blackNight_11
{
    return [UIColor colorWithHex:0x232323];
}
@end
