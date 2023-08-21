//
//  SerenityApp.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import SwiftUI

@main
struct SerenityApp: App {
    let audioService: AudioService = AudioService()
    @StateObject private var globalState: GlobalstateViewModel = GlobalstateViewModel()
    
    var body: some Scene {
        WindowGroup {
            SwitchView()
                .environmentObject(globalState)
                .onAppear{
                    audioService.startMusic(track: "Calm-space-ambient-track")
                }
                .onDisappear{
                    audioService.stopMusic()
                }
        }
    }
}
