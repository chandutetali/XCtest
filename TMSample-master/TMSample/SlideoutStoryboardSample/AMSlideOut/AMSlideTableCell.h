

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface AMSlideTableCell : UITableViewCell

@property (nonatomic, weak) NSDictionary* options;

- (void)setBadgeText:(NSString*)text;

@end
