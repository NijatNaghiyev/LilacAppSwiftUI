//
//  ImageView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 13.04.25.
//

import SwiftUI

struct ImageView: View {
    let imageUrl: String
    let width: CGFloat?
    let height: CGFloat?
    
  
    init(imageUrl: String, width: CGFloat? = nil, height: CGFloat? = nil) {
        self.imageUrl = imageUrl
        self.width = width
        self.height = height
    }
    
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(width:width ?? 226,  height:height ?? 226)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(16)
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width:width ?? 226, height: height ?? 226)
                    .clipped()
                    .cornerRadius(16)
            case .failure:
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:width ?? 226, height:height ?? 226)
                    .foregroundColor(.gray)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(16)
            @unknown default:
                EmptyView()
            }
        }
    }
}
