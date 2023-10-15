//
//  AFButton.swift
//  Apple-Framework
//
//  Created by Palatip Jantawong on 15/10/2566 BE.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .font(.title2)
            .fontWeight(.semibold)
            .background(Color.red)
            .foregroundStyle(.white)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    AFButton(title: "test title")
}
