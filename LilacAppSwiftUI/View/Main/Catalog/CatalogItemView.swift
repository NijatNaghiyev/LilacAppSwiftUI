//
//  CatalogItemView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 15.04.25.
//

import SwiftUI

struct CatalogItemView: View {
    let item: CatalogItemModel
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.black.opacity(0.1)
                .cornerRadius(16)
                .frame(width: .infinity, height: 224)
                .zIndex(1)
            Text(item.name)
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.white)
                .padding()
                .zIndex(2)
            ImageView(imageUrl: item.imageUrl,  width: 168, height: 224)
        }
            
    }
}

#Preview {
    CatalogItemView(item: CatalogItemModel(name: "Test", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO_Cywmkpeb33afWjf3zw6iSpeWy8KMvQyog&s"))
}
