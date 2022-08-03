//import UIKit
//import Flutter
//
//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//    var window: UIWindow?
//
//    var flutterEngine : FlutterEngine?
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        // Instantiate Flutter engine
//        self.flutterEngine = FlutterEngine(name: "io.flutter", project: nil)
//        self.flutterEngine!.run(withEntrypoint: nil)
//
//        return true
//    }
//}


import SwiftUI

@main
struct app_swiftApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            ContentViewS()
        }
    }
}