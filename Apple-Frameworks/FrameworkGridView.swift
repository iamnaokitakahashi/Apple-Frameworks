//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Naoki Takahashi on 10/13/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())] // .fleixble - based on how many columns I have, itll fill the screen
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) { FrameworkDetailView(framework:  viewModel.selectedFramework ?? MockData.sampleFramework)
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
    
    struct FrameworkTitleView: View {
        
        let framework: Framework
        
        var body: some View {
            
            VStack {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit() // ability to shrink
                    .minimumScaleFactor(0.6) // shrink to minium
            }
            .padding()
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

