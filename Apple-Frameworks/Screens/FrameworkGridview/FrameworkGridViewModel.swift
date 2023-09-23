//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Ahmed Hamam on 21/09/2023.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false // i want gridview listening when isShowingDetailView changes so i used @Published
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
