//
//  MainView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 13.04.25.
//

import SwiftUI


struct MainView: View {
    init() {
        NavigationBarConfigurator.configure()
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading,spacing: 48){
                    BestSellersView()
                    NewView()
                    CatalogView()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .navigationTitle(Text("LILAC"))
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    CustomToolbar()
                }
            }
            
        }
        
    }
}

#Preview {
    MainView()
}
