//
//  SettingTabView.swift
//  TunkoDeepLinkPractice
//
//  Created by 임훈 on 2023/01/29.
//

import SwiftUI

struct SettingTabView: View {
    
    @EnvironmentObject var appData: AppDataModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(coffees) { coffee in
                    NavigationLink {
                        
                    } label: {
                        HStack(spacing: 15) {
                            
                        }
                    }
                }
            }
        }
        .navigationTitle("Setting")
    }
}

struct SettingTabView_Previews: PreviewProvider {
    static var previews: some View {
        SettingTabView()
    }
}
