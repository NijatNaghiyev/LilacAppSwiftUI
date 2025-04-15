//
//  CatalogItemModel.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 15.04.25.
//

import Foundation
 
struct CatalogItemModel: Identifiable {
    let id: UUID = UUID()
    let name: String
    let imageUrl: String
}
