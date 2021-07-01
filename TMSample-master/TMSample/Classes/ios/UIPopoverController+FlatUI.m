

#import "UIPopoverController+FlatUI.h"
#import "FUIPopoverBackgroundView.h"

@implementation UIPopoverController (FlatUI)

- (void) configureFlatPopoverWithBackgroundColor:(UIColor *)backgroundColor
                                    cornerRadius:(CGFloat)cornerRadius {
    [FUIPopoverBackgroundView setBackgroundColor:backgroundColor];
    [FUIPopoverBackgroundView setCornerRadius:cornerRadius];
    [self setPopoverLayoutMargins:[FUIPopoverBackgroundView contentViewInsets]];
    [self setPopoverBackgroundViewClass:[FUIPopoverBackgroundView class]];
}

@end
