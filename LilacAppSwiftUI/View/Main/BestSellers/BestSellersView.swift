//
//  BestSellers.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 13.04.25.
//

import SwiftUI

struct BestSellersView: View {
    let imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR77xGIoe-cYX-PqEJ2_IzwLgUv9O5twcteOg&s"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Bestsellers")
                .font(.title)
                .fontWeight(.semibold)
                .padding(16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<20) { _ in
                        NavigationLink(destination: ProductView()) {
                            VStack {
                                BestSellersItemView(imageUrl: imageUrl,title: "Mary Virginia Martin", subtitle: "80 AZN")
                                    .contentShape(Rectangle())
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

#Preview {
    BestSellersView()
}




