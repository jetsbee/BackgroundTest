//
//  AppDelegate.swift
//  BackgroundTest
//
//  Created by jaeseob Hwang on 2020/06/22.
//  Copyright © 2020 jaeseob Hwang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = ViewController();
        window?.makeKeyAndVisible()
        
        return true
    }
}

