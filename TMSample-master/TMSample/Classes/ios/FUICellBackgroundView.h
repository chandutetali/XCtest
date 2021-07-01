
#import <UIKit/UIKit.h>

@interface FUICellBackgroundView : UIView

@property (nonatomic, strong) UIColor *backgroundColor UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGFloat cornerRadius UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor* separatorColor UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGFloat separatorHeight UI_APPEARANCE_SELECTOR;
@property (nonatomic) UIRectCorner roundedCorners;

@end
