
#import <UIKit/UIKit.h>
#import <substrate.h>

@interface WAMessageStatusSliceView : NSObject
-(id)createStatusImage: (NSUInteger) status;
- (id)statusImageForStatus:(NSUInteger) status;
@end

%hook WAMessageStatusSliceView

- (id)createStatusImage:(NSUInteger) status {
	NSLog(@"[TWEAK] Invoked didReceiveData");
 	UIAlertView *a = [[UIAlertView alloc] initWithTitle:@"Studo++ v1" message:@"" delegate:nil cancelButtonTitle:@"Ok!" otherButtonTitles:nil];
	[a show];

	if(status == 6)
	{
		NSArray *args = [NSArray arrayWithObjects: @(5), nil];
    	return [UIImage performSelector:@selector(createStatusImage:) withObject:args];
	}
	return %orig;
}
    	
- (id)statusImageForStatus:(NSUInteger) status {
	NSLog(@"[TWEAK] Invoked didReceiveData");
 	UIAlertView *a = [[UIAlertView alloc] initWithTitle:@"Studo++ v1" message:@"" delegate:nil cancelButtonTitle:@"Ok!" otherButtonTitles:nil];
	[a show];
	
	if(status == 6)
	{
		NSArray *args = [NSArray arrayWithObjects: @(5), nil];
    	return [UIImage performSelector:@selector(createStatusImage:) withObject:args];
	}
	return %orig;
}

%end


%ctor {
	%init;
}