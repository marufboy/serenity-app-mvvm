//
//  TutorialViewModel.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 18/08/23.
//

import Foundation
import SwiftUI

class TutorialViewModel: ObservableObject{
    @Published var items = [String]()
    @Published var isLastMessage = false
    var chatMessage = [String]()
    
    init() {
        chatMessage = getTutorialArray()
    }
    
    func firstMessage(){
        items.append(chatMessage[0])
    }
    
    //function next message show after specifi time
    func nextMessageAppear(index: Int, scrollReader: ScrollViewProxy){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.8) { [self] in
            if (index == items.indices.last) && (items.count < chatMessage.count) {
                let nextGreeting = chatMessage[index + 1]
                items.append(nextGreeting)
            }else{
                isLastMessage = true
            }
            DispatchQueue.main.async {
                // ... and animate scrolling to it after add
                withAnimation {
                    scrollReader.scrollTo(index, anchor: .bottom)
                }
            }
        }
    }
    
    
}
