//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Palatip Jantawong on 11/10/2566 BE.
//

import SwiftUI

struct FrameworkGridView: View {
    
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
                    }
                }
            }.navigationTitle("🍎 Frameworks")
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

struct FrameworkTitleView: View{
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
