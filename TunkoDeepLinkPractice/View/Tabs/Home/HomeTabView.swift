//
//  HomeTabView.swift
//  TunkoDeepLinkPractice
//
//  Created by 임훈 on 2023/01/29.
//

import SwiftUI

struct HomeTabView: View {
    
    @EnvironmentObject var appData: AppDataModel
    @State var isNext : Bool = false
    
    var body: some View {
        NavigationView {
            // String Tag
            ZStack {
                NavigationLink(destination: DetailView(coffee: appData.selectionCoffee), isActive: $isNext) { EmptyView() }
                
                List {
                    
                    // Setting tag
                    ForEach(coffees) { coffee in
                        //Setting tag and selection so that when ever we update selection
                        //that navigation link will be called....
                        
                        NavigationLink(destination: DetailView(coffee: coffee)) {
                            HStack(spacing: 15) {
                                Image(coffee.productImage)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(15)
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    Text(coffee.title)
                                        .font(.body.bold())
                                        .foregroundColor(.primary)
                                    
                                    Text(coffee.productPrice)
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
        .navigationViewStyle(.stack)
        .onAppear {
            if appData.selectionCoffee != nil {
                isNext.toggle()
                print("appData.selectionCoffee != nil")
            }
        }
        
        
    }
    
    @ViewBuilder
    func DetailView(coffee: Coffee?) -> some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(coffee?.productImage ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: 280)
                    .cornerRadius(1)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text(coffee?.title ?? "")
                        .font(.title.bold())
                        .foregroundColor(.primary)
                    
                    Text(coffee?.productPrice ?? "")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Text(coffee?.description ?? "")
                        .multilineTextAlignment(.leading)
                }
                .padding()
            }
        }
        .navigationTitle(coffee?.title ?? "")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
