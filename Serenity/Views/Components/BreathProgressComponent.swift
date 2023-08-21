//
//  BreathProgressComponent.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import SwiftUI

struct BreathProgressComponent: View {
    @ObservedObject var vm: BreathViewModel
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(
                    Color.white.opacity(0.5),
                    lineWidth: 24
                )
            Circle()
                .trim(from: 0, to: (vm.timeStart / 10.0) * (10 / vm.breathState.duration))
                .stroke(
                    vm.breathState.color,
                    style: StrokeStyle(
                        lineWidth: 24,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
                .animation(.linear, value: (vm.timeStart / 10.0) * (10 / vm.breathState.duration))
        }
    }
}
