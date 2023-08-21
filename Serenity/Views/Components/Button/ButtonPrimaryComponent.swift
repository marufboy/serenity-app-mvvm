//
//  ButtonPrimaryComponent.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import SwiftUI

struct ButtonPrimaryComponent: View {
    var geometry: GeometryProxy
    var action: (() -> Void)?
    
    var body: some View {
        Button(action: {
            withAnimation{
                action?()
            }
        }) {
            Text("Next")
                .font(.title)
                .frame(width: geometry.size.width / 5, height: geometry.size.height / 80)
                .padding()
        }
        .tint(Color("SecondaryColor"))
        .buttonStyle(.borderedProminent)
        .padding(.bottom, 40)
    }
}
