//
//  ContentView.swift
//  TunkoDeepLinkPractice
//
//  Created by 임훈 on 2023/01/29.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var appData: AppDataModel
    
    var body: some View {
        RootView()
            .environmentObject(appData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
