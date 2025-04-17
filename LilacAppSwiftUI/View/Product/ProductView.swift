//
//  ProductView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 15.04.25.
//

import SwiftUI

struct ProductView: View {
   
    var body: some View {
        NavigationStack{
            ScrollView{
                AppBarImage(imageUrl: ProductViewModel.imageUrl)
                
                SubTitleView()
                
                ParametresCartView()
                
            }
            .ignoresSafeArea(.all) //: ScrollView
        }
        .navigationBarBackButtonHidden(true) //: NavigationStack
        .enableSwipeBack()
    }
}





#Preview {
    NavigationStack {
        ProductView()
    }
}



