//
//  SwitchView.swift
//  Serenity
//
//  Created by Muhammad Afif Maruf on 20/08/23.
//

import SwiftUI

struct SwitchView: View {
    @EnvironmentObject var globalState: GlobalstateViewModel
    
    var body: some View {
        ZStack{
            switch globalState.currentView{
            case 1:
                HomeView()
            case 2:
                TutorialView()
            case 3:
                BreathView()
            case 4:
                SwitchStoryView()
            case 5:
                AffirmationCardView()
            default:
                HomeView()
            }
        }
    }
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}
