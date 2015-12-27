
#import "Imports.h"

@class UIView;


@protocol LPPage <NSObject>
- (UIView *)view;
- (NSInteger)priority;
@optional
- (double)backgroundAlpha;
- (_Bool)isTimeEnabled;
- (double)idleTimerInterval;
- (void)pageDidDismiss;
- (void)pageWillDismiss;
- (void)pageDidPresent;
- (void)pageWillPresent;
@end

@interface LPExampleView : UIView {

	id <LPPage> _page;
}

- (void)setDelegate:(id<LPPage>)_delegate;
@end
