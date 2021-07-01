

#import <UIKit/UIKit.h>

@interface UIProgressView (FlatUI)

- (void)configureFlatProgressViewWithTrackColor:(UIColor *)trackColor UI_APPEARANCE_SELECTOR;
- (void)configureFlatProgressViewWithProgressColor:(UIColor *)progressColor UI_APPEARANCE_SELECTOR;

- (void) configureFlatProgressViewWithTrackColor:(UIColor *)trackColor
                             progressColor:(UIColor *)progressColor;

@end
