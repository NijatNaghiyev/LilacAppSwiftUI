//
//  CustomToolBar.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 15.04.25.
//

import SwiftUI

struct CustomToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button(action: {
            }) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(Color("Lilac"))
            }
        }

        ToolbarItem(placement: .topBarTrailing) {
            Button(action: {
            }) {
                Image("map-pin")
                    .renderingMode(.template)
                    .foregroundStyle(Color("Lilac"))
            }
        }
    }
}
