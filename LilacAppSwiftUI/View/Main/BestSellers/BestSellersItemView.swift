//
//  BestSellersItemView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 15.04.25.
//


import SwiftUI

struct BestSellersItemView: View {
    let imageUrl: String
    let title: String
    let subtitle: String
    
    @State var isFavorite: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomTrailing) {
                ImageView(imageUrl: imageUrl)
                    .allowsHitTesting(false)
                Button {
                    isFavorite.toggle()
                } label: {
                    Image(systemName:isFavorite ? "heart.fill" : "heart")
                        .font(.system(size: 18))
                        .foregroundStyle(.white)
                        .padding(16)
                }
            }
            
            Text(title)
                .font(.headline)
                .padding(.top,8)
                .padding(.bottom,4)
                .padding(.leading,4)
            
            Text(subtitle)
                .font(.caption)
                .foregroundColor(.secondary)
                .padding(.leading,4)

        }
    }
}
