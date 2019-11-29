//
//  AppDelegate.swift
//  Animations
//
//  Created by Przemyslaw Biskup on 08/11/2019.
//  Copyright © 2019 SwiftSolutions. All rights reserved.
//

import UIKit
import Hero

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow()
    
    let nc: UINavigationController = {
        let nc = UINavigationController()
        nc.viewControllers = [MenuViewController()]
        nc.hero.isEnabled = true
        nc.isNavigationBarHidden = true
        return nc
    }()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        window?.backgroundColor = .red
        return true
    }
}
