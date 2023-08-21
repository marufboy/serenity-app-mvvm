//
//  TimerBreathComponent.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import SwiftUI

struct BreathHeaderComponent: View {
    var geometry: GeometryProxy
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(radius: 10)
                .padding(.horizontal, 50)
                .padding(.vertical, 20)
                .frame(width: geometry.size.width, height: geometry.size.height / 3)
            
            Image(systemName: "timer")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: geometry.size.height / 3.5)
                .offset(x: geometry.size.height / 3.5, y:0)
                .opacity(0.2)
                .blendMode(.destinationOut)
        }.compositingGroup()
    }
}
