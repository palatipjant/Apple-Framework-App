//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Palatip Jantawong on 15/10/2566 BE.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true 
        }
    }
    @Published var isShowingDetailView = false
}
