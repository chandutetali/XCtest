

#import "AMTableView.h"
#import "AMSlideOutGlobals.h"

@implementation AMTableView

- (void)drawRect:(CGRect)rect
{
	if (self.options[AMOptionsTableBackground]) {
		CGContextRef context = UIGraphicsGetCurrentContext();
		CGImageRef texture;
		UIImage* image = self.options[AMOptionsTableBackground];
		texture = (image.CGImage);
		CGContextSetBlendMode (context, 0);
		CGContextClipToRect(context, rect);
		CGContextDrawTiledImage(context, CGRectMake(0,0, image.size.width, image.size.height), texture);
	}
}

- (void)layoutSubviews
{
	[super layoutSubviews];
	[self setBackgroundColor:[UIColor clearColor]];
}

@end
