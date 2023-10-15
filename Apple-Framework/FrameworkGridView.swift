//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Palatip Jantawong on 11/10/2566 BE.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewmodel = FrameworkGridViewModel()
    @State var refresh:Bool = true
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) {Framework in
                        FrameworkTitleView(framework: Framework)
                            .onTapGesture {
                                viewmodel.selectedFramework = Framework
                            }
                    }
                }
            }.navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewmodel.isShowingDetailView, content: {
                    FrameworkDetailView(framework: viewmodel.selectedFramework!, isShowingDetailView: $viewmodel.isShowingDetailView)
                })
        }.refreshable {
            refresh.toggle()
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


