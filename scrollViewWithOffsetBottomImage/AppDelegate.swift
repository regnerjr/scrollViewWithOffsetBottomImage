import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window = UIWindow(frame: UIScreen.mainScreen().bounds)

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let vc = ViewController(nibName: nil, bundle: nil)
        window.rootViewController = vc
        
        window.backgroundColor = UIColor.whiteColor()
        window.makeKeyAndVisible()
        return true
    }

}

