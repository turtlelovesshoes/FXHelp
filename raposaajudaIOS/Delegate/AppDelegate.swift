//
//
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?
	
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		window = UIWindow(frame: UIScreen.main.bounds)
		window?.makeKeyAndVisible()
		
		if !UserDefaults.standard.bool(forKey: "checked"){
			window?.rootViewController = UINavigationController(rootViewController: HomeController())
		}else{
			window?.rootViewController = UINavigationController(rootViewController: IntroController())
		}
		
		UINavigationBar.appearance().shadowImage = UIImage()
		UINavigationBar.appearance().barTintColor = UIConstants.blueColor
		UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
		
		application.statusBarStyle = .lightContent
		
		return true
	}
	
	func applicationWillResignActive(_ application: UIApplication) {
		
	}
	
	func applicationDidEnterBackground(_ application: UIApplication) {
		
	}
	
	func applicationWillEnterForeground(_ application: UIApplication) {
		
	}
	
	func applicationDidBecomeActive(_ application: UIApplication) {
		
	}
	
	func applicationWillTerminate(_ application: UIApplication) {
		
	}
		
}
