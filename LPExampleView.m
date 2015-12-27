
#import "Imports.h"

@implementation LPExampleView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    return self;
}

- (void)setDelegate:(id<LPPage>)_delegate {
	self->_page = _delegate;
}

@end
