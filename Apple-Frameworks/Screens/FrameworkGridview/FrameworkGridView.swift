//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Ahmed Hamam on 20/09/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        
        NavigationStack{
          
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }//: ForEach
                }//: LazyVGrid
            }//: Scroll
            .navigationTitle("🍎 Frameworks")
            // $ sheet is listening to viewModel.isShowingDetailView
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)// passing the binding from viewmodel into detailview
            }//: sheet
        }//: Navigation
      
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


/*
 NavigationStack{
   
     ScrollView {
         LazyVGrid(columns: viewModel.columns) {
             ForEach(MockData.frameworks) { framework in
                 NavigationLink(value: framework) {
                     FrameworkTitleView(framework: framework)
                 }
                
                   
             }//: ForEach
         }//: LazyVGrid
     }//: Scroll
     .navigationTitle("🍎 Frameworks")
     .navigationDestination(for: Framework.self) { frameWork in
         FrameworkDetailView(framework: frameWork)
     }
  
 }//: Navigation
 
 */
