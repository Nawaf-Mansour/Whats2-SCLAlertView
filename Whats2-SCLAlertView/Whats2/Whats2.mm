#line 1 "/Users/nawafmansour/Desktop/Whats2-SCLAlertView/Whats2/Whats2.xm"
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "SCLAlertView.h"






#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class WASettingsViewController; 
static Class _logos_superclass$_ungrouped$WASettingsViewController; static void (*_logos_orig$_ungrouped$WASettingsViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL WASettingsViewController* _LOGOS_SELF_CONST, SEL, _Bool);

#line 9 "/Users/nawafmansour/Desktop/Whats2-SCLAlertView/Whats2/Whats2.xm"

static void _logos_method$_ungrouped$WASettingsViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL WASettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1){
    SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];
    alert.backgroundType = SCLAlertViewBackgroundBlur;
    
        alert.customViewColor = [UIColor colorWithRed:101/255.0f green:188/255.0f blue:84/225.0f alpha:1.0f];
    [alert addButton:@"إعدادات الواتس اب" actionBlock:^{
        (_logos_orig$_ungrouped$WASettingsViewController$viewDidAppear$ ? _logos_orig$_ungrouped$WASettingsViewController$viewDidAppear$ : (__typeof__(_logos_orig$_ungrouped$WASettingsViewController$viewDidAppear$))class_getMethodImplementation(_logos_superclass$_ungrouped$WASettingsViewController, @selector(viewDidAppear:)))(self, _cmd, arg1);
    }];
    
    [alert addButton:@"إعدادات واتس بلس" target:self selector:@selector(loadNewSettingss:)];
    [alert showQuestion:nil subTitle:@"مرحباً بك في اعدادات الواتس اب" closeButtonTitle:@"إلغاء" duration:0.0f];


}


static void _logos_method$_ungrouped$WASettingsViewController$loadNewSettingss$(_LOGOS_SELF_TYPE_NORMAL WASettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender){
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"اعدادات بلس" message:@"Hi"
                   delegate:nil
          cancelButtonTitle:@"OK"
          otherButtonTitles:nil];
    [alert show];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$WASettingsViewController = objc_getClass("WASettingsViewController"); _logos_superclass$_ungrouped$WASettingsViewController = class_getSuperclass(_logos_class$_ungrouped$WASettingsViewController); { _logos_register_hook$(_logos_class$_ungrouped$WASettingsViewController, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$WASettingsViewController$viewDidAppear$, (IMP *)&_logos_orig$_ungrouped$WASettingsViewController$viewDidAppear$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$WASettingsViewController, @selector(loadNewSettingss:), (IMP)&_logos_method$_ungrouped$WASettingsViewController$loadNewSettingss$, _typeEncoding); }} }
#line 35 "/Users/nawafmansour/Desktop/Whats2-SCLAlertView/Whats2/Whats2.xm"
