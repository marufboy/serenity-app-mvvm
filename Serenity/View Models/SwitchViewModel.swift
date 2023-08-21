//
//  SwitchViewModel.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 20/08/23.
//

import Foundation
import SwiftUI

class SwitchViewModel: ObservableObject{
    @AppStorage("select_view") var currentView: Int = 1
    @Published var typePath: SentenceType = .affirmation
    
    
}
