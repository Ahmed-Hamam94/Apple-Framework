//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Ahmed Hamam on 21/09/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool // binding makes isShowingDetailView equal to what ever it is in the parent view which is gridView
    @State private var isShowingSafariView = false
    
    var body: some View {
       
        VStack {
         XDismissButton(isShowingView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
               AFBUTTON(title: "Learn More")
            }//: Button
        }//: VStack
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
