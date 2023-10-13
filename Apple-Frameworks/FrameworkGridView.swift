//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Naoki Takahashi on 10/13/23.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        FrameworkTitleview(name: "App Clips", imageName: "app-clip")
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleview: View {
    
    let name: String
    let imageName: String
    
    var body: some View {
        
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit() // ability to shrink
                .minimumScaleFactor(0.6) // shrink to minium
        }
    }
}
