//
//  AppDataModel.swift
//  TunkoDeepLinkPractice
//
//  Created by 임훈 on 2023/01/29.
//

import SwiftUI

enum Tab: String {
    case home = "Home"
    case portfolio = "Portfolio"
    case write = "Write"
    case search = "Search"
    case setting = "Setting"
}

class AppDataModel: ObservableObject {
    @Published var currentTab: Tab = .home
    @Published var selectionCoffee : Coffee? = nil
    
    func checkDeepLink(url: URL) -> Bool {
        
        guard let host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else {
            return false
        }
        
        if host == Tab.home.rawValue {
            currentTab = .home
        } else if host == Tab.search.rawValue {
            currentTab = .search
        } else if host == Tab.setting.rawValue {
            currentTab = .setting
        } else {
            return checkInternalLinks(host: host)
        }
        
        return true
    }
    
    func checkInternalLinks(host: String) -> Bool {
        print("checkInternalLinks host : \(host)")
        if let index = coffees.firstIndex(where: { coffee in
            return coffee.id == host
        }) {
            print("checkInternalLinks host : \(host) true -> 딥링크! index : \(index)")
            currentTab = .home
            selectionCoffee = coffees[index]
            return true
        }
        return false
    }
}
