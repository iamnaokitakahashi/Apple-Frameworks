//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Naoki Takahashi on 10/19/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
}
