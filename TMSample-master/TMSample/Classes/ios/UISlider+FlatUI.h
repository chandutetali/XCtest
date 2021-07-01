

#import <UIKit/UIKit.h>

@interface UISlider (FlatUI)

- (void) configureFlatSliderWithTrackColor:(UIColor *)trackColor
                             progressColor:(UIColor *)progressColor
                                thumbColor:(UIColor *)thumbColor;

- (void) configureFlatSliderWithTrackColor:(UIColor *)trackColor
                             progressColor:(UIColor *)progressColor
                          thumbColorNormal:(UIColor *)thumbColorNormal
                     thumbColorHighlighted:(UIColor *)highlightedThumbColor;

@end
