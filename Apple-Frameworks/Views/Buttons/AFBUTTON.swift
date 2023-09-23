//
//  AFBUTTON.swift
//  Apple-Frameworks
//
//  Created by Ahmed Hamam on 21/09/2023.
//

import SwiftUI

struct AFBUTTON: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 250, height: 50)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(10)
    }
}

struct AFBUTTON_Previews: PreviewProvider {
    static var previews: some View {
        AFBUTTON(title: "Test")
    }
}
