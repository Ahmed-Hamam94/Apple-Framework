//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Ahmed Hamam on 22/09/2023.
//

import SwiftUI
import SafariServices
// there is link but i use safari for practice

struct SafariView : UIViewControllerRepresentable {
   
    typealias UIViewControllerType = SFSafariViewController
    
   
    let url : URL
//    func makeUIViewController(context: Context) -> some UIViewController {
//        <#code#>
//    }
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        
        SFSafariViewController(url: url)

    }
   
    
//    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
//        <#code#>
//    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
