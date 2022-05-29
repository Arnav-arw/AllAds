//
//  AllAdsApp.swift
//  AllAds
//
//  Created by Arnav Singhal on 29/05/22.
//

import SwiftUI
import GoogleMobileAds

@main
struct AllAdsApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("Finish launching!")
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        return true
    }
}
