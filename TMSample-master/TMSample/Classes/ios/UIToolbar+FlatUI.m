

#import "UIToolbar+FlatUI.h"
#import "UIImage+FlatUI.h"

@implementation UIToolbar (FlatUI)

- (void)configureFlatToolbarWithColor:(UIColor *)color {
    [self setBackgroundImage:[UIImage imageWithColor:color cornerRadius:0]
          forToolbarPosition:UIToolbarPositionAny
                  barMetrics:UIBarMetricsDefault];
    
    if ([self respondsToSelector:@selector(setShadowImage:forToolbarPosition:)]) {
        UIImage *clearShadowImage = [UIImage imageWithColor:[UIColor clearColor] cornerRadius:0];
        [self setShadowImage:clearShadowImage forToolbarPosition:UIToolbarPositionAny];
    }
}

@end
