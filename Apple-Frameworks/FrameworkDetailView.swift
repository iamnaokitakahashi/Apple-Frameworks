//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Naoki Takahashi on 10/16/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework) 
    }
}
