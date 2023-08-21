//
//  BreathPracticeInfoView.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import SwiftUI

struct BreathPracticeInfoComponent: View {
    var geometry: GeometryProxy
    
    var body: some View {
        VStack {
            Text("How to Practice")
                .font(.system(size: geometry.size.width * 0.03, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text("1. Exhale completely through your mouth, making a whoosh sound.\n2. Close your mouth and inhale quietly through your nose to a mental count of four.\n3. Hold your breath for a count of seven.\n4. Exhale completely through your mouth, making a whoosh sound to a count of eight.\n5. This completes one breath. Now inhale again and repeat the cycle three or four times.")
                .font(.system(size: geometry.size.width * 0.025, design: .rounded))
                .foregroundColor(.black)
                .lineSpacing(12)
                .frame(width: geometry.size.width * 0.8, alignment: .leading)
                .padding(.leading, -10)
        }
        .frame(width: geometry.size.width / 1.25)
    }
}
