//
//  SceneDelegate.swift
//  QuickstartYTAPIApp
//
//  Created by Artur on 04.12.2023.
//

import UIKit
import GoogleSignIn

//import FirebaseCore
//import FirebaseFirestore
//import FirebaseAuth
      

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        GIDSignIn.sharedInstance().clientID = "731247984284-eta8h43im0g1ar69fevifpk67dog3if6.apps.googleusercontent.com"
        //FirebaseApp.configure()
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        guard let url = URLContexts.first?.url else {
            return
        }

        let options: [UIApplication.OpenURLOptionsKey : Any] = [
            .sourceApplication: URLContexts.first?.options.sourceApplication as Any,
            .annotation: URLContexts.first?.options.annotation as Any
        ]

        GIDSignIn.sharedInstance().handle(url, sourceApplication: URLContexts.first?.options.sourceApplication, annotation: URLContexts.first?.options.annotation)
    }


    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

