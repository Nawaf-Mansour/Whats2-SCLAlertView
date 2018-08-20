#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "SCLAlertView.h"

%config(generator=internal)



%hook WASettingsViewController
- (void)viewDidAppear:(_Bool)arg1{
    SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];
    alert.backgroundType = SCLAlertViewBackgroundBlur;
    
        alert.customViewColor = [UIColor colorWithRed:101/255.0f green:188/255.0f blue:84/225.0f alpha:1.0f];
    [alert addButton:@"إعدادات الواتس اب" actionBlock:^{
        %orig;
    }];
    
    [alert addButton:@"إعدادات واتس بلس" target:self selector:@selector(loadNewSettingss:)];
    [alert showQuestion:nil subTitle:@"مرحباً بك في اعدادات الواتس اب" closeButtonTitle:@"إلغاء" duration:0.0f];


}

%new
- (void)loadNewSettingss:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"اعدادات بلس" message:@"Hi"
                   delegate:nil
          cancelButtonTitle:@"OK"
          otherButtonTitles:nil];
    [alert show];
}

%end
