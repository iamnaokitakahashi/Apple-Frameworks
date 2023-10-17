//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Naoki Takahashi on 10/16/23.
//

import SwiftUI

struct AFButton: View {
    
    var title: String // to pass so it can say whatever I want
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
    }
}
