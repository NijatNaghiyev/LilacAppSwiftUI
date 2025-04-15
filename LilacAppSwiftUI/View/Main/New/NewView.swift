//
//  NewView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 15.04.25.
//

import SwiftUI

struct NewView: View {
    let imageUrl = "https://assets.architecturaldigest.in/photos/67ca91c1ec4cc4750b79bc18/16:9/w_1280,c_limit/louis.jpg"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("New")
                .font(.title)
                .fontWeight(.semibold)
                .padding(16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<10) { _ in
                        NewItemView(imageUrl: imageUrl,title: "Mary Virginia Martin", price: "75 AZN",discountPrice: "68 AZN")
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

#Preview {
    NewView()
}
