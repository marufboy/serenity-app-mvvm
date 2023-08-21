//
//  BreathViewModel.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import Foundation

class BreathViewModel: ObservableObject{
    @Published var breathState: BreathingModel = BreathingModel(state: .inhale)
    @Published var timeStart: Double = 0
    @Published var isShowNextButton: Bool = false
    @Published var isShowRepeatSheet: Bool = false
    @Published var isPlayTimer: Bool = false
    
    @Published var timer: Timer?
    
    func startBreathTimer(){
        self.isPlayTimer = true
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.updateTimer()
        })
    }
    
    func updateTimer(){
        if self.isPlayTimer{
            if self.timeStart < self.breathState.duration{
                self.timeStart += 1
            }else{
                if self.breathState.state == .finish {
                    self.timer?.invalidate()
                    self.isShowRepeatSheet = true
                    self.isPlayTimer = false
                }else{
                    self.timeStart = 0
                    self.breathState =  breathState.nextBreathState()
                }
            }
        }
    }
    
    func restartRepeatBreath(){
        self.breathState.state = .inhale
        self.timeStart = 0
        self.startBreathTimer()
        self.closeRepeatSheet()
    }
    
    func stopRepeatBreath(){
        self.closeRepeatSheet()
        self.isShowNextButton = true
    }
    
    //repeat sheet function
    func closeRepeatSheet(){
        self.isShowRepeatSheet = false
    }
    
    
    
    
}
