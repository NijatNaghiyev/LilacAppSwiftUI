//
//  SubTitleView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 17.04.25.
//

import SwiftUI

struct SubTitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text("Mary Virginia Martin")
                .font(.title)
                .fontWeight(.medium)
            
            HStack(spacing: 8){
                Text("9%")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(4)
                    .background(Color.purple)
                
                Text("68 AZN")
                    .font(.subheadline)
                    .foregroundStyle(Color.purple)
                
                Text("75 AZN")
                    .font(.subheadline)
                    .strikethrough()
                    .foregroundStyle(.gray)
                
            } //: HStack
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

