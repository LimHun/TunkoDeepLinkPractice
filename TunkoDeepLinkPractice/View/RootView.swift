//
//  Home.swift
//  TunkoDeepLinkPractice
//
//  Created by 임훈 on 2023/01/29.
//

import SwiftUI

struct RootView: View {
     
    @EnvironmentObject var appData: AppDataModel
    var body: some View {
        TabView(selection: $appData.currentTab) {
            HomeTabView()
                .environmentObject(appData)
                .tag(Tab.home)
                .tabItem {
                    Image(systemName: "house.fill")
                }
            ProtfolioTabView()
                .environmentObject(appData)
                .tag(Tab.portfolio)
                .tabItem {
                    Image(systemName: "house.fill")
                }
            WriteTabView()
                .environmentObject(appData)
                .tag(Tab.write)
                .tabItem {
                    Image(systemName: "house.fill")
                }
            SearchTabIView()
                .environmentObject(appData)
                .tag(Tab.search)
                .tabItem {
                    Image(systemName: "house.fill")
                }
            SettingTabView()
                .environmentObject(appData)
                .tag(Tab.setting)
                .tabItem {
                    Image(systemName: "house.fill")
                }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
