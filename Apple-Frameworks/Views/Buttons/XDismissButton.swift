//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Ahmed Hamam on 22/09/2023.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingView: Bool
    
    var body: some View {
        
        HStack{
            Spacer()
            
            Button {
                isShowingView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44,height: 44)
            }//: Button
        }//: HStack
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingView: .constant(false))
    }
}
