//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Naoki Takahashi on 10/19/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView: Bool = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())] // .fleixble - based on how many columns I have, itll fill the screen
}
