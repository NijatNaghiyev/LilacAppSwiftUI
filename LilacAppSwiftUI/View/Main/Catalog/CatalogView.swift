//
//  CatalogView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 15.04.25.
//

import SwiftUI

struct CatalogView: View {
    let content: [CatalogItemModel] = [
        CatalogItemModel(
            name: "Compositions", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6hb_Fnt1hatRzXyvhGMBnf0VNWeB1QwPPMQ&s"),
        CatalogItemModel(
            name: "Flowers", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjN_qWWuUxlpyQNBB5TWQI15vB67YbFELTIw&s"),
        CatalogItemModel(
            name: "Gifts", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_LX1HMtwtql4lhA33GxmHoxBTd-5bPzHpNQ&s"),
        CatalogItemModel(name: "Plants", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO_Cywmkpeb33afWjf3zw6iSpeWy8KMvQyog&s")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Catalog")
                .font(.title)
                .fontWeight(.semibold)
                .padding(16)
            
            LazyVGrid(columns: Array(repeating: GridItem(.adaptive(minimum: 200, maximum: 400)), count: 2)) {
                ForEach(0..<content.count) { index in
                    CatalogItemView(
                        item: content[index]
                    )

                }
            }
            
        }
    }
}

#Preview {
    CatalogView()
}
