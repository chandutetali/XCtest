

#import "UITabBar+FlatUI.h"
#import "UIImage+FlatUI.h"

@implementation UITabBar (FlatUI)

- (void)configureFlatTabBarWithColor:(UIColor *)color {
    [self setBackgroundImage:[UIImage imageWithColor:color cornerRadius:0]];
}

- (void)configureFlatTabBarWithSelectedColor:(UIColor *)selectedColor {
    [self setSelectionIndicatorImage:[UIImage imageWithColor:selectedColor cornerRadius:6.0]];
}

- (void)configureFlatTabBarWithColor:(UIColor *)color
                       selectedColor:(UIColor *)selectedColor {
    [self configureFlatTabBarWithColor:color];
    [self configureFlatTabBarWithSelectedColor:selectedColor];
}

@end
