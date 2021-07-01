

#import "UIImage+FlatUI.h"

@implementation UIProgressView (FlatUI)

- (void)configureFlatProgressViewWithTrackColor:(UIColor *)trackColor {
    UIImage *trackImage = [UIImage imageWithColor:trackColor cornerRadius:4.0];
    trackImage = [trackImage imageWithMinimumSize:CGSizeMake(10.0f, 10.0f)];
    [self setTrackImage:trackImage];
}

- (void)configureFlatProgressViewWithProgressColor:(UIColor *)progressColor {
    UIImage *progressImage = [UIImage imageWithColor:progressColor cornerRadius:4.0];
    [self setProgressImage:progressImage];
}

- (void) configureFlatProgressViewWithTrackColor:(UIColor *)trackColor
                                   progressColor:(UIColor *)progressColor {
    [self configureFlatProgressViewWithTrackColor:trackColor];
    [self configureFlatProgressViewWithProgressColor:progressColor];
}

@end
