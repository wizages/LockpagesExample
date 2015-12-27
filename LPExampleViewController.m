
#import "Imports.h"

@implementation LPExampleViewController
- (id)init{
	self = [super init];
	if (self) {
		CGRect screenRect = [[UIScreen mainScreen] bounds];
		__mainView = [[LPExampleView alloc] initWithFrame:screenRect];
		[__mainView setDelegate:self];
		[__mainView setBackgroundColor:[UIColor redColor]];
		[self setView:__mainView];
	}
	return self;
}
-(void) viewWillAppear:(BOOL) animated{
	[super viewWillAppear:animated];
	CGRect screenRect = [[UIScreen mainScreen] bounds];
	[__mainView setFrame:screenRect];
}

-(void)lazyLoad:(NSMutableArray *)arg1{
}

-(void)rotateView
{
	CGRect screenRect = [[UIScreen mainScreen] bounds];
	[__mainView setFrame:screenRect];
}


- (NSInteger)priority {
	return 1; 
}

- (double)idleTimerInterval {
	return 120.0; 
}
@end
