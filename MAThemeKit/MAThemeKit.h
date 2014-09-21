//
//  MAThemeKit.h
//  MAThemeKit
//
//  Created by Mike on 8/29/14.
//  Copyright (c) 2014 Mike Amaral. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAThemeKit : NSObject

/*
 Loosely based on the list of methods and properties conforming to UIAppearance
 in iOS 7, by Mattt.
https://gist.github.com/mattt/5135521
 
 This is by no means an exhaustive list, but the most common things I see in most apps.
*/


#pragma mark - Master Theme

+ (void)setupThemeWithPrimaryColor:(UIColor *)primaryColor secondaryColor:(UIColor *)secondaryColor fontName:(NSString *)fontName lightStatusBar:(BOOL)lightStatusBar;


#pragma mark - UINavigationBar

+ (void)customizeNavigationBarColor:(UIColor *)barColor textColor:(UIColor *)textColor buttonColor:(UIColor *)buttonColor;
+ (void)customizeNavigationBarColor:(UIColor *)barColor textColor:(UIColor *)textColor fontName:(NSString *)fontName fontSize:(CGFloat)fontSize buttonColor:(UIColor *)buttonColor;


#pragma mark - UIBarButtonItem

+ (void)customizeNavigationBarButtonColor:(UIColor *)buttonColor;


#pragma mark - UITabBar

+ (void)customizeTabBarColor:(UIColor *)barColor textColor:(UIColor *)textColor;
+ (void)customizeTabBarColor:(UIColor *)barColor textColor:(UIColor *)textColor fontName:(NSString *)fontName fontSize:(CGFloat)fontSize;


#pragma mark - UIButton

+ (void)customizeButtonColor:(UIColor *)buttonColor;


#pragma mark - UISwitch

+ (void)customizeSwitchOnColor:(UIColor *)switchOnColor;


#pragma mark - UISearchBar

+ (void)customizeSearchBarColor:(UIColor *)barColor buttonTintColor:(UIColor *)buttonTintColor;


#pragma mark - UIActivityIndicator

+ (void)customizeActivityIndicatorColor:(UIColor *)color;


#pragma mark - UISegmentedControl

+ (void)customizeSegmentedControlWithMainColor:(UIColor *)mainColor secondaryColor:(UIColor *)secondaryColor;


#pragma mark - UISlider

+ (void)customizeSliderColor:(UIColor *)sliderColor;


#pragma mark - UIToolbar

+ (void)customizeToolbarTintColor:(UIColor *)tintColor;


#pragma mark - UIPageControl

+ (void)customizePageControlCurrentPageColor:(UIColor *)mainColor;


#pragma mark - Color utilities

+ (UIColor *)colorWithR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b;
+ (UIColor *)colorWithHexString:(NSString *)hex;

@end
