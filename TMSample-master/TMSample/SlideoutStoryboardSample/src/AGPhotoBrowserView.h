

#import <UIKit/UIKit.h>

#import "AGPhotoBrowserDelegate.h"
#import "AGPhotoBrowserDataSource.h"

@interface AGPhotoBrowserView : UIView

@property (nonatomic, weak) id<AGPhotoBrowserDelegate> delegate;
@property (nonatomic, weak) id<AGPhotoBrowserDataSource> dataSource;

@property (nonatomic, strong, readonly) UIButton *doneButton;

- (void)show;
- (void)showFromIndex:(NSInteger)initialIndex;
- (void)hideWithCompletion:( void (^) (BOOL finished) )completionBlock;

@end
