//
//  NavigationBarViewModel.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 13.04.25.
//

import UIKit

struct NavigationBarConfigurator {
    static func configure() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        // Renk ve yazı tipi ayarları
        let lilacColor = UIColor(named: "Lilac") ?? UIColor.systemPurple
        let titleFont = UIFont.systemFont(ofSize: 30, weight: .light)
        let largeTitleFont = UIFont.systemFont(ofSize: 44, weight: .light)
        
        appearance.titleTextAttributes = [
            .foregroundColor: lilacColor,
            .font: titleFont
        ]
        appearance.largeTitleTextAttributes = [
            .foregroundColor: lilacColor,
            .font: largeTitleFont
        ]
        
        appearance.shadowColor = .clear
        
        // Görünümleri uygula
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
    }
}
