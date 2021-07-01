

#import <UIKit/UIKit.h>

@interface UITabBar (FlatUI)

- (void)configureFlatTabBarWithColor:(UIColor *)color UI_APPEARANCE_SELECTOR;
- (void)configureFlatTabBarWithSelectedColor:(UIColor *)selectedColor UI_APPEARANCE_SELECTOR;

- (void)configureFlatTabBarWithColor:(UIColor *)color
                       selectedColor:(UIColor *)selectedColor;

@end
