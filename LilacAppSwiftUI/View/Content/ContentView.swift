//
//  ContentView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 13.04.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView().tabItem {
                Image("main_icon")
                    .renderingMode(.template)

            }
            
            Text("Catalog").tabItem {
                Image("catalog_icon")
                    .renderingMode(.template)

            }
            
            Text("Cart").tabItem {
                Image("cart_icon")
                    .renderingMode(.template)

            }
            Text("Favorites").tabItem {
                Image("favorites_icon")
                    .renderingMode(.template)

            }
            Text("Account").tabItem {
                Image("account_icon")
                    .renderingMode(.template)

            }
        }
        .tint(Color("Lilac"))
    }
}

#Preview {
    ContentView()
}
