//
//  GlobalStateViewModel.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 20/08/23.
//

import Foundation
import SwiftUI

class GlobalstateViewModel: ObservableObject{
    @AppStorage("select_view") var currentView: Int = 1
    @AppStorage("visited_tutorial_view") var isVisitedTutorialView = false
    @Published var selectStory: SentenceType = .affirmation
    
    func changeView(to selectView: Int){
        currentView = selectView
    }
    
    func checkTutorialViewVisited() -> Int{
        if isVisitedTutorialView{
            return 3 // number case view for breathview
        }else{
            return 2 // number case view for tutorialview
        }
    }
    
    func changeVisitedTutorialView(){
        isVisitedTutorialView = true
    }
    
    func selectedStory(with story: SentenceType){
        guard story == .affirmation || story == .story else { return }
        selectStory = story
    }
}
