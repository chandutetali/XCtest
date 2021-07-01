

#import <UIKit/UIKit.h>

@class AMSlideOutNavigationController;

@interface TDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) AMSlideOutNavigationController*	slideoutController;

@property (weak, nonatomic) UIViewController* AmController;

@end
