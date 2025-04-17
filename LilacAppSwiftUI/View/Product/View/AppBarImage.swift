//
//  AppBarImage.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 17.04.25.
//

import SwiftUI

struct AppBarImage: View {
    let imageUrl: [String]
    
    @Environment(\.dismiss) var dismiss
    @State var isFavorite: Bool = false
    @State var selectedPage: Int = 0

    var body: some View {
        VStack {
               TabView(selection: $selectedPage) {
                   ForEach(0..<imageUrl.count, id: \.self) { index in
                       ZStack {
                           ZStack(alignment: .center) {
                               ZStack(alignment: .bottomTrailing) {
                                   GeometryReader { size in
                                       ImageView(imageUrl: imageUrl[index], width: .infinity, height: .infinity, cornerRadius: 0)
                                           .frame(maxWidth: .infinity, minHeight: size.size.width)
                                   }
                                   .frame(height: UIScreen.main.bounds.width)
                                   
                                   Button {
                                       isFavorite.toggle()
                                   } label: {
                                       Image(systemName:isFavorite ? "heart.fill" : "heart")
                                           .font(.system(size: 24))
                                           .foregroundStyle(.white)
                                           .padding(16)
                                   }
                               }
                               
                               
                               
                               Button(action: { dismiss() }) {
                                   Image(systemName: "chevron.left")
                                       .font(.system(size: 24))
                                       .foregroundStyle(.white)
                                       .frame(width: 44, height: 44)
                                       .padding()
                               }
                               .position(x: 30, y: 50)
                               .padding(.top, 16)
                               
                               
                               
                           }
                           .frame(maxWidth: .infinity)                       }
                       .tag(index)
                   }
               }
               .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)) // default noktaları kapat
               .frame(height: UIScreen.main.bounds.width)
               .frame(maxWidth: .infinity)
               .presentationCornerRadius(0)
           }
        
        
    }
}


#Preview {
    AppBarImage(imageUrl: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO_Cywmkpeb33afWjf3zw6iSpeWy8KMvQyog&s"
                                  
                                  ,"https://assets.architecturaldigest.in/photos/67ca91c1ec4cc4750b79bc18/16:9/w_1280,c_limit/louis.jpg"
                                  ,"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR77xGIoe-cYX-PqEJ2_IzwLgUv9O5twcteOg&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjN_qWWuUxlpyQNBB5TWQI15vB67YbFELTIw&s"
    ])
}
