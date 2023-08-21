//
//  AudioService.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 16/08/23.
//

import Foundation
import AVFoundation

class AudioService{
    var player: AVAudioPlayer!
    
    func startMusic(track: String){
        guard let url = Bundle.main.url(forResource: track, withExtension: "mp3") else {
            print("Resource not found: \(track)")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url)
            player?.numberOfLoops = -1
            player?.prepareToPlay()
            player?.play()
        } catch  {
            print("Fail to initialize player", error)
        }
    }
    
    func stopMusic(){
        guard let player = player else{
            print("Instance of audio player not found")
            return
        }
        
        player.stop()
    }
}
