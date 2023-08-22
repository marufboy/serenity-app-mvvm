//
//  View+HiddenView.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 22/08/23.
//

import Foundation
import SwiftUI

extension View{
    @ViewBuilder func hideWhen(_ condition: Bool, remove: Bool = false) -> some View {
        if condition {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
