//
//  SearchTabIView.swift
//  TunkoDeepLinkPractice
//
//  Created by 임훈 on 2023/01/29.
//

import SwiftUI

struct SearchTabIView: View {
    
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
        .navigationTitle("Search")
    }
}

struct SearchTabIView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabIView()
    }
}
