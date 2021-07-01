

#import <Foundation/Foundation.h>

@class AGPhotoBrowserView;

@protocol AGPhotoBrowserDelegate <NSObject>

@optional

- (void)photoBrowser:(AGPhotoBrowserView *)photoBrowser didTapOnDoneButton:(UIButton *)doneButton;
- (void)photoBrowser:(AGPhotoBrowserView *)photoBrowser didTapOnActionButton:(UIButton *)actionButton atIndex:(NSInteger)index;

@end
