//
//  AllAdsApp.swift
//  AllAds
//
//  Created by Arnav Singhal on 29/05/22.
//

import SwiftUI
import GoogleMobileAds

@main
struct YourApp: App {
    let adsVM = AdsViewModel.shared
    init() {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(adsVM)
    }
}
}
