
#import <UIKit/UIKit.h>

@interface UITableViewCell (FlatUI)

@property (nonatomic) CGFloat cornerRadius;
@property (nonatomic) CGFloat separatorHeight;

- (void) configureFlatCellWithColor:(UIColor *)color
                      selectedColor:(UIColor *)selectedColor;

- (void) configureFlatCellWithColor:(UIColor *)color
                      selectedColor:(UIColor *)selectedColor
                    roundingCorners:(UIRectCorner)corners;

- (void)setCornerRadius:(CGFloat)cornerRadius;
- (void)setSeparatorHeight:(CGFloat)separatorHeight;

@end
