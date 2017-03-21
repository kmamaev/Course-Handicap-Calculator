#import "AppDelegate.h"
#import "CourseHandicapCalculatorVC.h"


@interface AppDelegate ()
@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CGRect windowFrame = [UIScreen mainScreen].bounds;
    self.window = [[UIWindow alloc] initWithFrame:windowFrame];
    
    CourseHandicapCalculatorVC *startVC = [[CourseHandicapCalculatorVC alloc] init];
    
    self.window.rootViewController = startVC;

    [self.window makeKeyAndVisible];
    return YES;
}

@end
