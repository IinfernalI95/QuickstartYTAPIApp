//
//  AppDelegate.swift
//  QuickstartYTAPIApp
//
//  Created by Artur on 04.12.2023.
//

import UIKit
//import GoogleSignIn

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

//    var window: UIWindow?
//
//    func applicationDidFinishLaunching(_ application: UIApplication) {
//        // Initialize Google sign-in.
//        GIDSignIn.sharedInstance().clientID = "<731247984284-eta8h43im0g1ar69fevifpk67dog3if6.apps.googleusercontent.com>"
//    }
//    
//    func application(_ application: UIApplication,
//                     open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
//        return GIDSignIn.sharedInstance().handle(url,
//                                                 sourceApplication: sourceApplication,
//                                                 annotation: annotation)
//    }
//    
//    @available(iOS 9.0, *)
//    func application(_ app: UIApplication, open url: URL,
//                     options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
//        let sourceApplication = options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String
//        let annotation = options[UIApplication.OpenURLOptionsKey.annotation]
//        return GIDSignIn.sharedInstance().handle(url,
//                                                 sourceApplication: sourceApplication,
//                                                 annotation: annotation)
//    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}

