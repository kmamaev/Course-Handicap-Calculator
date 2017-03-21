import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let windowFrame = UIScreen.main.bounds;
        self.window = UIWindow.init(frame:windowFrame)
    
        let startVC = CourseHandicapCalculatorVC.init()
    
        self.window?.rootViewController = startVC;

        self.window?.makeKeyAndVisible();
        return true
    }

}
