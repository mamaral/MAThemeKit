//
//  MAThemeKit.h
//  MAThemeKit
//
//  Created by Mike on 8/29/14.
//  Copyright (c) 2014 Mike Amaral. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAThemeKit : NSObject

/*
 Loosely based on the list of methods and properties conforming to UIAppearance
 in iOS 7, by Mattt.
https://gist.github.com/mattt/5135521
 
 This is by no means an exhaustive list, but the most common things I see in most apps.
*/


#pragma mark - Master Theme

+ (void)setupThemeWithPrimaryColor:(nonnull UIColor *)primaryColor secondaryColor:(nonnull
 UIColor *)secondaryColor fontName:(nullable NSString *)fontName lightStatusBar:(BOOL)lightStatusBar;


#pragma mark - UINavigationBar

+ (void)customizeNavigationBarColor:(nonnull UIColor *)barColor textColor:(nonnull UIColor *)textColor buttonColor:(nonnull UIColor *)buttonColor;
+ (void)customizeNavigationBarColor:(nonnull UIColor *)barColor textColor:(nonnull UIColor *)textColor fontName:(nonnull NSString *)fontName fontSize:(CGFloat)fontSize buttonColor:(nonnull UIColor *)buttonColor;


#pragma mark - UIBarButtonItem

+ (void)customizeNavigationBarButtonColor:(nonnull UIColor *)buttonColor;


#pragma mark - UITabBar

+ (void)customizeTabBarColor:(nonnull UIColor *)barColor textColor:(nonnull UIColor *)textColor;
+ (void)customizeTabBarColor:(nonnull UIColor *)barColor textColor:(nonnull UIColor *)textColor fontName:(nonnull NSString *)fontName fontSize:(CGFloat)fontSize;


#pragma mark - UIButton

+ (void)customizeButtonColor:(nonnull UIColor *)buttonColor;


#pragma mark - UISwitch

+ (void)customizeSwitchOnColor:(nonnull UIColor *)switchOnColor;


#pragma mark - UISearchBar

+ (void)customizeSearchBarColor:(nonnull UIColor *)barColor buttonTintColor:(nonnull UIColor *)buttonTintColor;


#pragma mark - UIActivityIndicator

+ (void)customizeActivityIndicatorColor:(nonnull UIColor *)color;


#pragma mark - UISegmentedControl

+ (void)customizeSegmentedControlWithMainColor:(nonnull UIColor *)mainColor secondaryColor:(nonnull UIColor *)secondaryColor;


#pragma mark - UISlider

+ (void)customizeSliderColor:(nonnull UIColor *)sliderColor;


#pragma mark - UIToolbar

+ (void)customizeToolbarTintColor:(nonnull UIColor *)tintColor barTintColor:(nonnull UIColor *)barTintColor;
+ (void)customizeToolbarTintColor:(nonnull UIColor *)tintColor;
+ (void)customizeToolbarBarTintColor:(nonnull UIColor *)barTintColor;


#pragma mark - UIPageControl

+ (void)customizePageControlCurrentPageColor:(nonnull UIColor *)mainColor;

#pragma mark - UILabel

+ (void)customizeLabelColor:(nonnull UIColor *)textColor fontName:(nullable NSString *)fontName fontSize:(CGFloat)fontSize;

#pragma mark - UITableView

+ (void)customizeTableViewColor:(nonnull UIColor *)mainColor secondaryColor:(nonnull UIColor *)secondaryColor;

#pragma mark - UIBarButtonItem

+ (void)customizeBarButtonItemColor:(nonnull UIColor *)mainColor fontName:(nullable NSString *)fontName fontSize:(CGFloat)fontSize;

#pragma mark - Color utilities

+ (nonnull UIColor *)colorWithR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b;
+ (nonnull UIColor *)colorWithHexString:(nonnull NSString *)hex;

@end
