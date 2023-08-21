//
//  BreathingModel.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import Foundation
import SwiftUI

struct BreathingModel{
    var state: BreathingState
    
    enum BreathingState: CaseIterable {
        case inhale
        case hold
        case exhale
        case finish
    }
    
    var color: Color {
        switch state {
        case .inhale:
            return Color("PrimaryColor")
        case .hold:
            return Color("SecondaryColor")
        case .exhale:
            return .cyan
        case .finish:
            return Color("PrimaryColor")
        }
    }
    
    var text: String {
        switch state {
        case .inhale:
            return "Inhale for 4 seconds"
        case .hold:
            return "Hold for 7 seconds"
        case .exhale:
            return "Exhale for 8 seconds"
        case .finish:
            return ""
        }
    }
    
    var duration: TimeInterval {
        switch state {
        case .inhale:
            return 4
        case .hold:
            return 7
        case .exhale:
            return 8
        case .finish:
            return 0
        }
    }
    
    func nextBreathState() -> BreathingModel{
        let allStates = BreathingState.allCases
        if let currentIndex = allStates.firstIndex(of: state) {
            let nextIndex = (currentIndex + 1) % allStates.count
            let nextState = allStates[nextIndex]
            return BreathingModel(state: nextState)
        }
        return self
    }
}
