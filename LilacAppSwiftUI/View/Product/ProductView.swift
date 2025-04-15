//
//  ProductView.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 15.04.25.
//

import SwiftUI

struct ProductView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss.callAsFunction()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                }

            }
        }
    }
}
