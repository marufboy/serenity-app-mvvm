//
//  ButtonPlayComponent.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import SwiftUI

struct ButtonTimerComponent: View {
    @ObservedObject var vm: BreathViewModel
    var geometry: GeometryProxy
    var action: () -> Void
    
    var body: some View {
        if !vm.isPlayTimer {
            Button(action: {
                action()
            }) {
                Image(systemName: "play.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width / 5, height: geometry.size.width / 5)
                    .foregroundColor(vm.breathState.color)
            }
        } else {
            Text("\((vm.timeStart < 0 ? 0 : vm.timeStart), specifier: "%.0f") Second")
                .font(.system(size: geometry.size.width * 0.08, design: .rounded))
                .bold()
                .foregroundColor(vm.breathState.color)
        }
    }
}
