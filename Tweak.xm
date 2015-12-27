#import "Imports.h"
static LPExampleViewController *_example;
%hook SBLockScreenView
         
 -(void)didMoveToWindow {

    [_example viewWillAppear:NO];   
    %orig;
}
%end

%hook SBLockScreenViewController

- (_Bool)isBounceEnabledForPresentingController:(id)arg1 locationInWindow:(struct CGPoint)arg2 {
    return NO;
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration
{
    %orig;
    [_example rotateView];
}

%end

%ctor
{

    @autoreleasepool {
        _example = [[LPExampleViewController alloc] init];
        [[LPPageController sharedInstance] addPage:_example];
    }
   
}