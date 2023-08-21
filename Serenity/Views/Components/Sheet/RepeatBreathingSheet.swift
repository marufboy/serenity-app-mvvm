//
//  RepeatBreathingSheet.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import SwiftUI

struct RepeatBreathingSheet: View {
    var repeatBreathing: () -> Void
    var cancelRepeat: () -> Void
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Do you want to repeat the breathing exercise?")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            HStack(spacing: 20) {
                Button("Yes, repeat") {
                    repeatBreathing()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Button("No, I'm done") {
                    cancelRepeat()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.horizontal, 20)
        }
        .padding(20)
        .background(Color.white)
        .cornerRadius(10)
    }
}
