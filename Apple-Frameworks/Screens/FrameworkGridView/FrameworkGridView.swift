//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Naoki Takahashi on 10/13/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) { FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}
    struct FrameworkGridView_Previews: PreviewProvider {
        static var previews: some View {
            FrameworkGridView()
                .preferredColorScheme(.dark)
        }
    }
    
    
    // MVVM - note to me
    
    // **Model** - solves the data
    // ex: struct Framework {
    //  let name: String
    //  let imageName: String
    //  let urlString: String
    //  let description: String
    
    // **View** - Displays everything
    // **ViewModel** - layer in between that handles display logic
    // var selectedFramework: Framework

