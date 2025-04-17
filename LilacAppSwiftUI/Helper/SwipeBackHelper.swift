//
//  SwipeBackHelper.swift
//  LilacAppSwiftUI
//
//  Created by Nijat Naghiyev on 17.04.25.
//

import SwiftUI

struct SwipeBackHelper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        controller.view.backgroundColor = .clear
        DispatchQueue.main.async {
            controller.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
            controller.navigationController?.interactivePopGestureRecognizer?.delegate = nil
        }
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}


struct EnableSwipeBack: ViewModifier {
    func body(content: Content) -> some View {
        content.background(
            SwipeBackHelper()
                .frame(width: 0, height: 0)
        )
    }
}


extension View {
     func enableSwipeBack() -> some View {
         self.modifier(EnableSwipeBack())
    }
}
