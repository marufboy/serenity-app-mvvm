//
//  AffirmationCardViewModel.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import Foundation
import SwiftUI

class AffirmationCardViewModel: ObservableObject{
    
    @Published var backDegree = 0.0
    @Published var frontDegree = -90.0
    @Published var isFlipped = false
    @Published var isShaking = false
    @Published var isFinished = false
    @Published var quote: String = "You must motivate yourself."
    
    let width: CGFloat = 800
    let height: CGFloat = 850
    let durationAndDelay: CGFloat = 0.3
    let shakeDuration: Double = 2
    
    func openCard(){
        self.shake()
        DispatchQueue.main.asyncAfter(deadline: .now() + shakeDuration) {
            withAnimation(.linear(duration: 0.2)) {
                self.isShaking = false
            }
            self.flipCard()
            self.isFinished = true
        }
    }
    
    func selectQuote(by typePath: SentenceType){
        self.quote = getRandomSentence(ofType: typePath)
    }
    
    func flipCard () {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0
            }
            
        }
    }
    
    func shake() {
        withAnimation(Animation.linear.repeatCount(Int(shakeDuration / 0.2))) {
            isShaking.toggle()
        }
    }
}
