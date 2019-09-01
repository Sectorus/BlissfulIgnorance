
#import <UIKit/UIKit.h>
#import <substrate.h>

@interface WAMessageStatusSliceView : NSObject
- (id)createStatusImage: (NSUInteger) status;
- (id)statusImageForStatus:(NSUInteger) status;
- (void)animateFromStatus:(NSUInteger) status toStatus:(NSUInteger)status2;
@end

%hook WAMessageStatusSliceView

- (id)createStatusImage:(NSUInteger) status {
	if(status == 6)
	{
		/*
		NSArray *args = [NSArray arrayWithObjects: @(5), nil];
    	return [UIImage performSelector:@selector(createStatusImage:) withObject:args];
    	*/
    	return %orig(5);
	}
	return %orig;
}
    	
- (id)statusImageForStatus:(NSUInteger) status {
	if(status == 6)
	{
		return %orig(5);
	}
	return %orig;
}

- (void)animateFromStatus:(NSUInteger) status toStatus:(NSUInteger)status2 {
	if(status == 5 && status2 == 6)
	{
		return;
	}
	%orig;
}

%end


%ctor {
	%init;
}