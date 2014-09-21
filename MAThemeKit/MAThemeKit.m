//
//  MAThemeKit.m
//  MAThemeKit
//
//  Created by Mike on 8/29/14.
//  Copyright (c) 2014 Mike Amaral. All rights reserved.
//

static CGFloat const kDefaultNavigationBarFontSize = 22;
static CGFloat const kDefaultTabBarFontSize = 14;

#import "MAThemeKit.h"

@implementation MAThemeKit

+ (void)setupThemeWithPrimaryColor:(UIColor *)primaryColor secondaryColor:(UIColor *)secondaryColor fontName:(NSString *)fontName lightStatusBar:(BOOL)lightStatusBar {
    if (lightStatusBar) {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    }
    
    [self customizeNavigationBarColor:primaryColor textColor:secondaryColor fontName:fontName fontSize:kDefaultNavigationBarFontSize buttonColor:secondaryColor];
    [self customizeNavigationBarButtonColor:secondaryColor];
    [self customizeTabBarColor:primaryColor textColor:secondaryColor fontName:fontName fontSize:kDefaultTabBarFontSize];
    [self customizeSwitchOnColor:primaryColor];
    [self customizeSearchBarColor:primaryColor buttonTintColor:secondaryColor];
    [self customizeActivityIndicatorColor:primaryColor];
    [self customizeButtonColor:primaryColor];
    [self customizeSegmentedControlWithMainColor:primaryColor secondaryColor:secondaryColor];
    [self customizeSliderColor:primaryColor];
    [self customizePageControlCurrentPageColor:primaryColor];
    [self customizeToolbarTintColor:primaryColor];
}


#pragma mark - UINavigationBar

+ (void)customizeNavigationBarColor:(UIColor *)barColor textColor:(UIColor *)textColor buttonColor:(UIColor *)buttonColor {
    [[UINavigationBar appearance] setBarTintColor:barColor];
    [[UINavigationBar appearance] setTintColor:buttonColor];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:textColor}];
}

+ (void)customizeNavigationBarColor:(UIColor *)barColor textColor:(UIColor *)textColor fontName:(NSString *)fontName fontSize:(CGFloat)fontSize buttonColor:(UIColor *)buttonColor {
    [[UINavigationBar appearance] setBarTintColor:barColor];
    [[UINavigationBar appearance] setTintColor:buttonColor];
    
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    if (font) {
        [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                               NSForegroundColorAttributeName: textColor,
                                                               NSFontAttributeName: font
                                                               }];
    }
}


#pragma mark - UIBarButtonItem

+ (void)customizeNavigationBarButtonColor:(UIColor *)buttonColor {
    [[UIButton appearanceWhenContainedIn:[UINavigationBar class], nil] setTitleColor:buttonColor forState:UIControlStateNormal];
}


#pragma mark - UITabBar

+ (void)customizeTabBarColor:(UIColor *)barColor textColor:(UIColor *)textColor {
    [[UITabBar appearance] setBarTintColor:barColor];
    [[UITabBar appearance] setTintColor:textColor];
}

+ (void)customizeTabBarColor:(UIColor *)barColor textColor:(UIColor *)textColor fontName:(NSString *)fontName fontSize:(CGFloat)fontSize {
    [[UITabBar appearance] setBarTintColor:barColor];
    [[UITabBar appearance] setTintColor:textColor];
    
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    if (font) {
        [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName: font} forState:UIControlStateNormal];
    }
}


#pragma mark - UIButton

+ (void)customizeButtonColor:(UIColor *)buttonColor {
    [[UIButton appearance] setTitleColor:buttonColor forState:UIControlStateNormal];
}


#pragma mark - UISwitch

+ (void)customizeSwitchOnColor:(UIColor *)switchOnColor {
    [[UISwitch appearance] setOnTintColor:switchOnColor];
}


#pragma mark - UISearchBar

+ (void)customizeSearchBarColor:(UIColor *)barColor buttonTintColor:(UIColor *)buttonTintColor {
    [[UISearchBar appearance] setBarTintColor:barColor];
    [[UISearchBar appearance] setTintColor:barColor];
        [[UIBarButtonItem appearanceWhenContainedIn:[UISearchBar class], nil] setTitleTextAttributes:@{NSForegroundColorAttributeName: buttonTintColor} forState:UIControlStateNormal];
}


#pragma mark - UIActivityIndicator

+ (void)customizeActivityIndicatorColor:(UIColor *)color {
    [[UIActivityIndicatorView appearance] setColor:color];
}


#pragma mark - UISegmentedControl

+ (void)customizeSegmentedControlWithMainColor:(UIColor *)mainColor secondaryColor:(UIColor *)secondaryColor {
    [[UISegmentedControl appearance] setTintColor:mainColor];
}


#pragma mark - UISlider

+ (void)customizeSliderColor:(UIColor *)sliderColor {
    [[UISlider appearance] setMinimumTrackTintColor:sliderColor];
}


#pragma mark - UIToolbar

+ (void)customizeToolbarTintColor:(UIColor *)tintColor {
    [[UIToolbar appearance] setTintColor:tintColor];
}


#pragma mark - UIPageControl

+ (void)customizePageControlCurrentPageColor:(UIColor *)mainColor {
    [[UIPageControl appearance] setPageIndicatorTintColor:[UIColor lightGrayColor]];
    [[UIPageControl appearance] setCurrentPageIndicatorTintColor:mainColor];
    [[UIPageControl appearance] setBackgroundColor:[UIColor clearColor]];
}


#pragma mark - Color utilities

+ (UIColor *)colorWithR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b {
    CGFloat red = r / 255.0f;
    CGFloat green = g / 255.0f;
    CGFloat blue = b / 255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

+ (UIColor *)colorWithHexString:(NSString *)hex {
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor grayColor];
    }
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) {
        cString = [cString substringFromIndex:2];
    }
    
    if ([cString length] != 6) {
        return  [UIColor grayColor];
    }
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [MAThemeKit colorWithR:(float)r G:(float)g B:(float)b];
}

@end
