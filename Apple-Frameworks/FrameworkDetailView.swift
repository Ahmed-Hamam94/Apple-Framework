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
    
    var body: some View {
       
        VStack {
            HStack{
                Spacer()
                
                Button {
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }//: Button
            }//: HStack
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            }label: {
               AFBUTTON(title: "Learn More")
            }//: Button
        }//: VStack
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
