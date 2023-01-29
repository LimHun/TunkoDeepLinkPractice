//
//  TunkoDeepLinkPracticeApp.swift
//  TunkoDeepLinkPractice
//
//  Created by 임훈 on 2023/01/29.
//

import SwiftUI

@main
struct TunkoDeepLinkPracticeApp: App {
    
    @StateObject var appData: AppDataModel = AppDataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
                .onOpenURL { url in
                    // used to fetch the deep link url...
                    if appData.checkDeepLink(url: url) {
                        print("From Deep Link")
                    } else {
                        print("Fall back deep link")
                    }
                }
        }
    }
}

// Integrating Deep Link
// First create a url scheme for how to call your url
// calling will be done like [tunko://...value....]
